using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlantColourChanger : MonoBehaviour {


    public Color plantColor;
    public Material plantMaterial;
	
	void Update () {
        plantMaterial.SetColor("_Color", plantColor);
	}
}
