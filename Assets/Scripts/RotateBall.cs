using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RotateBall : MonoBehaviour {
    public float rotationSpeed = 5;
    public Vector3 rotationVector = Vector3.up;

    // Update is called once per frame
    void Update () {
        transform.Rotate(rotationVector.normalized * Time.deltaTime * rotationSpeed);
    }
}
