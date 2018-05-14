/*
	Copyright 2014-2017 Sixth Sensor.
	All rights reserved.
	http://sixthsensor.dk

	This is a Unity Asset Store product. See license here:
	https://unity3d.com/legal/as_terms
*/

using UnityEngine;
using System.Collections;
using System.Collections.ObjectModel;
using System.Collections.Generic;

/// <summary>
/// The OffAxisCamera component computes and applies an off-axis perspective projection to a camera dynamically. Simply add OffAxisCamera to your scene and assign a GameObject that will serve as the window plane to the property 'windowTransform'. Adjust the window transforms x-y scale to set the window size.</br>
/// </br>
/// Off-axis perspective projection is often used in VR/XR applications where you need to render a perspective that matches the viewpoint of a spectator relative to a display. It can be used in conjunction with head tracking, providing the illusion of a dynamic view into a 3D scene, similar to looking through a window.</br>
/// </summary>

[ExecuteInEditMode]
[RequireComponent(typeof(Camera))]
public class OffAxisCamera : MonoBehaviour
{
	[SerializeField] Transform _windowTransform;

	Camera _cam;

	Vector3[] _winCorners = new Vector3[4];

	Matrix4x4 _projectionMatrix;
	Matrix4x4 _viewMatrix;
	Quaternion _rotation;
	float _fov;

	bool _isDirty;
    Matrix4x4 _lastwinToWorld;
    Matrix4x4 _lastSelfToWorld;
	float _lastEyeSeperation;

	/// <summary>
	/// Gets or sets the window transform.
	/// </summary>
	public Transform windowTransform {
		get { return _windowTransform; }
		set {
			_windowTransform = value;
			if( !_windowTransform ) ResetCamera();
		}
	}

	/// <summary>
	/// Gets the window corners as readonly collection.
	/// </summary>
	public ReadOnlyCollection<Vector3> windowCorners {
		get { return new ReadOnlyCollection<Vector3>( _winCorners ); }
	}



	void OnEnable()
	{
		_cam = GetComponent<Camera>();
		_isDirty = true;
	}


	void OnDisable()
	{
		ResetCamera();
	}


	void LateUpdate()
	{
		if( !_cam || !_windowTransform ) return;

        // Check for changes that require an update to the perspective.
        // Unfortunately we can't use transform.hasChanged because other scripts may depend on it. So we compare.
        if( _lastwinToWorld != _windowTransform.localToWorldMatrix ){
            _lastwinToWorld = _windowTransform.localToWorldMatrix;
            _isDirty = true;
        }
        if( _lastSelfToWorld != transform.localToWorldMatrix ){
            _lastSelfToWorld = transform.localToWorldMatrix;
            _isDirty = true;
        }
        if( _cam.stereoEnabled && _cam.stereoSeparation != _lastEyeSeperation ){
            _lastEyeSeperation = _cam.stereoSeparation;
            _isDirty = true;
        }

		// Compute and apply off-axis perspective.
		if( _isDirty )
		{
            // Get window corners in world space.
            _winCorners[0] = _windowTransform.TransformPoint( -0.5f, -0.5f, 0 );
			_winCorners[1] = _windowTransform.TransformPoint( -0.5f, 0.5f, 0 );
			_winCorners[2] = _windowTransform.TransformPoint( 0.5f, 0.5f, 0 );
			_winCorners[3] = _windowTransform.TransformPoint( 0.5f, -0.5f, 0 );

			if( _cam.stereoEnabled && _cam.stereoTargetEye == StereoTargetEyeMask.Both ){
                // Stereo case.
				Vector3 camForward = _windowTransform.position - transform.position;
				float windowDist = camForward.magnitude;
				camForward /= windowDist; // Normalize
				Vector3 camUp = Vector3.Cross( camForward, _windowTransform.right ).normalized;
				Vector3 camRight = Vector3.Cross( _windowTransform.up, camForward ).normalized;
				Vector3 eyeOffset = camRight * _cam.stereoSeparation * 0.5f;
				ComputeOffAxisPerspective( _winCorners, transform.position - eyeOffset, _cam.nearClipPlane, _cam.farClipPlane, _cam.aspect, ref _projectionMatrix, ref _viewMatrix, ref _rotation, ref _fov );
				_cam.SetStereoViewMatrix( Camera.StereoscopicEye.Left, _viewMatrix );
				_cam.SetStereoProjectionMatrix( Camera.StereoscopicEye.Left, _projectionMatrix );
				ComputeOffAxisPerspective( _winCorners, transform.position + eyeOffset, _cam.nearClipPlane, _cam.farClipPlane, _cam.aspect, ref _projectionMatrix, ref _viewMatrix, ref _rotation, ref _fov );
				_cam.SetStereoViewMatrix( Camera.StereoscopicEye.Right, _viewMatrix );
				_cam.SetStereoProjectionMatrix( Camera.StereoscopicEye.Right, _projectionMatrix );
				ComputeOffAxisPerspective( _winCorners, transform.position, _cam.nearClipPlane, _cam.farClipPlane, _cam.aspect, ref _projectionMatrix, ref _viewMatrix, ref _rotation, ref _fov );
				_cam.fieldOfView = _fov;
				_cam.stereoConvergence = windowDist; // Mostly for overwriting user input.
				transform.rotation = _rotation;

			} else {
                // Mono case.
				ComputeOffAxisPerspective( _winCorners, transform.position, _cam.nearClipPlane, _cam.farClipPlane, _cam.aspect, ref _projectionMatrix, ref _viewMatrix, ref _rotation, ref _fov );
				_cam.projectionMatrix = _projectionMatrix;
				_cam.worldToCameraMatrix = _viewMatrix;
				_cam.fieldOfView = _fov;
				transform.rotation = _rotation;
			}
			
            // Reset dirty flag.
			_isDirty = false;
		}
	}


	void ResetCamera()
	{
		_cam.ResetProjectionMatrix();
		_cam.ResetWorldToCameraMatrix();
		if( _cam.stereoEnabled ){
			_cam.ResetStereoViewMatrices();
			_cam.ResetStereoProjectionMatrices();
		}
	}


	void OnDrawGizmos()
	{
		if( !_windowTransform ) return;

		// Window.
		Gizmos.color = new Color( 1, 1, 1, 0.5f );
		for( int c = 0; c < 4; c++ ) Gizmos.DrawLine( _winCorners[c], _winCorners[c<3?c+1:0] );
	}
	 

	// From "Projection for Virtual Reality" https://en.wikibooks.org/wiki/Cg_Programming/Unity/Projection_for_Virtual_Reality
	// See also http://paulbourke.net/stereographics/stereorender/
	// See also http://csc.lsu.edu/~kooima/pdfs/gen-perspective.pdf
	static void ComputeOffAxisPerspective
	(
		Vector3[] corners, Vector3 eyePos, float near, float far, float aspect,
		ref Matrix4x4 projectionMatrix, ref Matrix4x4 viewMatrix, ref Quaternion rotation, ref float fov
	){
		Vector3 pa = corners[0]; // Lower left
		Vector3 pb = corners[3]; // Lower right
		Vector3 pc = corners[1]; // Upper left

		Vector3 va; // From pe to pa
		Vector3 vb; // From pe to pb
		Vector3 vc; // From pe to pc
		Vector3 vr; // Right axis of screen
		Vector3 vu; // Up axis of screen
		Vector3 vn; // Normal vector of screen

		float l; // Distance to left screen edge
		float r; // Distance to right screen edge
		float b; // Distance to bottom screen edge
		float t; // Distance to top screen edge
		float d; // Distance from eye to screen 

		float temp;

		vr = pb - pa;
		vu = pc - pa;
		float vrMag = vr.magnitude;
		float vuMag = vu.magnitude;
		vr /= vrMag; // Normalize
		vu /= vuMag; // Normalize
		vn = -Vector3.Cross( vr, vu );
		vn.Normalize();

		va = pa - eyePos;
		vb = pb - eyePos;
		vc = pc - eyePos;

		d = -Vector3.Dot( va, vn );
		temp = near / d;
		l = Vector3.Dot( vr, va ) * temp;
		r = Vector3.Dot( vr, vb ) * temp;
		b = Vector3.Dot( vu, va ) * temp;
		t = Vector3.Dot( vu, vc ) * temp;

		temp =  1 / (r-l);
		projectionMatrix[0,0] = 2f * near * temp; 
		projectionMatrix[0,1] = 0; 
		projectionMatrix[0,2] = (r+l) * temp; 
		projectionMatrix[0,3] = 0;

		temp =  1 / (t-b);
		projectionMatrix[1,0] = 0; 
		projectionMatrix[1,1] = 2f * near * temp; 
		projectionMatrix[1,2] = (t+b) * temp; 
		projectionMatrix[1,3] = 0;

		temp =  1 / (near-far);
		projectionMatrix[2,0] = 0;         
		projectionMatrix[2,1] = 0; 
		projectionMatrix[2,2] = (far+near) * temp; 
		projectionMatrix[2,3] = 2f * far * near * temp;

		projectionMatrix[3,0] = 0;         
		projectionMatrix[3,1] = 0; 
		projectionMatrix[3,2] = -1;        
		projectionMatrix[3,3] = 0;		

		// The original paper puts everything into the projection 
		// matrix (i.e. sets it to p * rm * tm and the other 
		// matrix to the identity), but this doesn't appear to 
		// work with Unity's shadow maps.

		viewMatrix[0,0] = vr.x; 
		viewMatrix[0,1] = vr.y; 
		viewMatrix[0,2] = vr.z; 
		viewMatrix[0,3] = ( vr.x * -eyePos.x ) + ( vr.y * -eyePos.y ) + ( vr.z * -eyePos.z );	

		viewMatrix[1,0] = vu.x; 
		viewMatrix[1,1] = vu.y; 
		viewMatrix[1,2] = vu.z; 
		viewMatrix[1,3] = ( vu.x * -eyePos.x ) + ( vu.y * -eyePos.y ) + ( vu.z * -eyePos.z );

		viewMatrix[2,0] = vn.x; 
		viewMatrix[2,1] = vn.y; 
		viewMatrix[2,2] = vn.z; 
		viewMatrix[2,3] = ( vn.x * -eyePos.x ) + ( vn.y * -eyePos.y ) + ( vn.z * -eyePos.z );

		viewMatrix[3,0] = 0;  
		viewMatrix[3,1] = 0;  
		viewMatrix[3,2] = 0;  
		viewMatrix[3,3] = 1;

		// Rotation and fov is needed for culling to work.
		rotation.SetLookRotation( ( 0.5f * ( pb + pc ) - eyePos ), vu );

		// Set field of view to a conservative estimate to make frustum big enough.
		fov = Mathf.Rad2Deg / aspect * Mathf.Atan( ( vrMag + vuMag ) / va.magnitude );
	}
}