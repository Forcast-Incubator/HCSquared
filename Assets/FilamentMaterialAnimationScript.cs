using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FilamentMaterialAnimationScript : MonoBehaviour
{
    public Color colorTint = Color.white;
    public float filamentThickness = 0.015f;
    private Renderer _renderer;
    //private MaterialPropertyBlock _propBlock;

    void Awake()
    {
        //_propBlock = new MaterialPropertyBlock();
        _renderer = GetComponent<Renderer>();
    }

    void Update()
    {
        _renderer.material.SetColor("_BaseColor", colorTint);
        _renderer.material.SetFloat("_Thickness", filamentThickness);
        // Get the current value of the material properties in the renderer.
        /*
        _renderer.GetPropertyBlock(_propBlock);
        // Assign our new value.
        Debug.Log(_renderer.material);

        _propBlock.SetColor("_BaseColor", colorTint);
        _propBlock.SetColor("_GlowColor", colorTint);
        _propBlock.SetFloat("_Thickness", Random.value);
        // Apply the edited values to the renderer.
        _renderer.SetPropertyBlock(_propBlock);
        */
    }
}
