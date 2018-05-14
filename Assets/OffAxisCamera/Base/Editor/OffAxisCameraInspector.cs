/*
	Created by Carl Emil Carlsen.
	Copyright 2017 Sixth Sensor.
	All rights reserved.
	http://sixthsensor.dk
*/

using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;

[CustomEditor(typeof(OffAxisCamera))]
public class OffAxisCameraInspector : Editor
{
	SerializedProperty _windowTransform;


	void OnEnable()
	{
		_windowTransform = serializedObject.FindProperty("_windowTransform");

		// Ensure that the script will be executed late compared to other scripts.
		MonoScript script = MonoScript.FromMonoBehaviour( target as MonoBehaviour );
		if( MonoImporter.GetExecutionOrder( script ) != 5000 ) MonoImporter.SetExecutionOrder( script, 5000 );
	}


	public override void OnInspectorGUI()
	{
		serializedObject.Update();

		EditorGUILayout.PropertyField( _windowTransform );
		if( _windowTransform.objectReferenceValue == null ){
			EditorGUILayout.HelpBox( "Set WindowTransform to activate.", MessageType.Warning );
		}

		serializedObject.ApplyModifiedProperties();
	}
}