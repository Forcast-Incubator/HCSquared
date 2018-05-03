using System.Collections;
using UnityEngine;
using UnityEditor;

public class HC2ToolsEditor : EditorWindow
{
    static HC2ToolsEditor HC2ToolsWindow;

    public GameObject dualCam = null;
    public GameObject singleCam = null;
    public GameObject stageGeometry = null;
    public GameObject deadZoneGeom = null;
    public GameObject customObject1 = null;
    public GameObject customObject2 = null;
    public GameObject customObject3 = null;
    public GameObject customObject4 = null;
    public GameObject customObject5 = null;

    bool dualCamBtn = false;

    [MenuItem("Window/HCSquared Tools")]
    static void OpenPopup()
    {
        HC2ToolsWindow = (HC2ToolsEditor)(EditorWindow.GetWindow(typeof(HC2ToolsEditor)));

        Vector2 minSize = new Vector2(100, 100);

        HC2ToolsWindow.minSize = minSize;

        HC2ToolsWindow.titleContent = new GUIContent("HCSquared Tools");

        HC2ToolsWindow.ShowPopup();
    }

    void OnGUI()
    {
        GUI.Label(new Rect(3, 3, position.width - 6, 17), "Camera Rigs", EditorStyles.boldLabel);
        
        dualCam = (GameObject)EditorGUI.ObjectField(new Rect(14, 43, position.width - 19, 17), GUIContent.none, dualCam, typeof(GameObject), true);
        GUI.Label(new Rect(3, 23, position.width - 6, 17), "Dual Head (Shift+1)", BoldIfActive(dualCam));

        singleCam = (GameObject)EditorGUI.ObjectField(new Rect(14, 83, position.width - 19, 17), GUIContent.none, singleCam, typeof(GameObject), true);
        GUI.Label(new Rect(3, 63, position.width - 6, 17), "Single Head (Shift+2)", BoldIfActive(singleCam));

        stageGeometry = (GameObject)EditorGUI.ObjectField(new Rect(14, 123, position.width - 19, 17), GUIContent.none, stageGeometry, typeof(GameObject), true);
        GUI.Label(new Rect(3, 103, position.width - 6, 17), "Stage Geometry (Shift+3)", BoldIfActive(stageGeometry));

        deadZoneGeom = (GameObject)EditorGUI.ObjectField(new Rect(14, 163, position.width - 19, 17), GUIContent.none, deadZoneGeom, typeof(GameObject), true);
        GUI.Label(new Rect(3, 143, position.width - 6, 17), "Dead Zone Geom (Shift+4)", BoldIfActive(deadZoneGeom));

        customObject1 = (GameObject)EditorGUI.ObjectField(new Rect(14, 203, position.width - 19, 17), GUIContent.none, customObject1, typeof(GameObject), true);
        GUI.Label(new Rect(3, 183, position.width - 6, 17), "Custom Object (Shift+5)", BoldIfActive(customObject1));

        customObject2 = (GameObject)EditorGUI.ObjectField(new Rect(14, 243, position.width - 19, 17), GUIContent.none, customObject2, typeof(GameObject), true);
        GUI.Label(new Rect(3, 223, position.width - 6, 17), "Custom Object (Shift+6)", BoldIfActive(customObject2));

        customObject3 = (GameObject)EditorGUI.ObjectField(new Rect(14, 283, position.width - 19, 17), GUIContent.none, customObject3, typeof(GameObject), true);
        GUI.Label(new Rect(3, 263, position.width - 6, 17), "Custom Object (Shift+7)", BoldIfActive(customObject3));

        customObject4 = (GameObject)EditorGUI.ObjectField(new Rect(14, 323, position.width - 19, 17), GUIContent.none, customObject4, typeof(GameObject), true);
        GUI.Label(new Rect(3, 303, position.width - 6, 17), "Custom Object (Shift+8)", BoldIfActive(customObject4));

        customObject5 = (GameObject)EditorGUI.ObjectField(new Rect(14, 363, position.width - 19, 17), GUIContent.none, customObject5, typeof(GameObject), true);
        GUI.Label(new Rect(3, 343, position.width - 6, 17), "Custom Object (Shift+9)", BoldIfActive(customObject5));



        Event current = Event.current;
        if (current.type != EventType.KeyDown)
            return;

        if (current.shift)
        {
            switch (current.keyCode)
            {
                case KeyCode.Alpha1:
                    ToggleGameObject(dualCam);
                    break;
                case KeyCode.Alpha2:
                    ToggleGameObject(singleCam);
                    break;
                case KeyCode.Alpha3:
                    ToggleGameObject(stageGeometry);
                    break;
                case KeyCode.Alpha4:
                    ToggleGameObject(deadZoneGeom);
                    break;
                case KeyCode.Alpha5:
                    ToggleGameObject(customObject1);
                    break;
                case KeyCode.Alpha6:
                    ToggleGameObject(customObject2);
                    break;
                case KeyCode.Alpha7:
                    ToggleGameObject(customObject3);
                    break;
                case KeyCode.Alpha8:
                    ToggleGameObject(customObject4);
                    break;
                case KeyCode.Alpha9:
                    ToggleGameObject(customObject5);
                    break;
            }
        }
    }

    private GUIStyle BoldIfActive(GameObject gameObject)
    {
        return gameObject && gameObject.activeSelf ? EditorStyles.boldLabel : EditorStyles.label;
    }

    private void ToggleGameObject(GameObject gameObject)
    {
        if (gameObject)
        {
            gameObject.SetActive(!gameObject.activeSelf);
            Repaint();
        }
    }

}
