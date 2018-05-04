using System.Collections;
using UnityEngine;
using UnityEditor;

public class HC2ToolsEditor : EditorWindow
{
    static HC2ToolsEditor HC2ToolsWindow;

    public GameObject root = null;
    public GameObject dualHead = null;
    public GameObject singleHead = null;
    public GameObject stageGeometry = null;
    public GameObject deadZoneGeom = null;
    public GameObject customObject1 = null;
    public GameObject customObject2 = null;
    public GameObject customObject3 = null;
    public GameObject customObject4 = null;
    public GameObject customObject5 = null;

    private static string currentScene;

    Vector2 scrollPos;

    [MenuItem("Window/HCSquared Tools")]
    static void OpenPopup()
    {
        HC2ToolsWindow = (HC2ToolsEditor)(EditorWindow.GetWindow(typeof(HC2ToolsEditor)));

        Vector2 minSize = new Vector2(200, 200);

        HC2ToolsWindow.minSize = minSize;

        HC2ToolsWindow.titleContent = new GUIContent("HCSquared Tools");

        HC2ToolsWindow.ShowPopup();

    }

    private void OnEnable()
    {
        FindAllObjects();
    }

    public void OnDestroy()
    {

    }


    private void FindAllObjects()
    {
        root = GameObject.Find("ROOT");

        if (root)
        {
            Transform[] transforms = root.GetComponentsInChildren<Transform>(true);

            dualHead = FindObject("DualHead", transforms);
            singleHead = FindObject("SingleHead", transforms);
            stageGeometry = FindObject("StageGeometry", transforms);
            deadZoneGeom = FindObject("DeadZone", transforms);
        }
    }

    private GameObject FindObject(string name, Transform[] transforms)
    {
        foreach (Transform t in transforms)
        {
            if (t.gameObject.name == name)
            {
                return t.gameObject;
            }
        }
        return null;
    }

    void OnGUI()
    {

        EditorGUILayout.BeginVertical();
        scrollPos = EditorGUILayout.BeginScrollView(scrollPos, false, true, GUILayout.Height(position.height));
        
        GUILayout.Label("Dual Head (Shift+1)", BoldIfActive(dualHead));
        dualHead = (GameObject)EditorGUILayout.ObjectField(GUIContent.none, dualHead, typeof(GameObject), true);
        
        GUILayout.Label("Single Head (Shift+2)", BoldIfActive(singleHead));
        singleHead = (GameObject)EditorGUILayout.ObjectField(GUIContent.none, singleHead, typeof(GameObject), true);

        GUILayout.Label("Stage Geometry (Shift+3)", BoldIfActive(stageGeometry));
        stageGeometry = (GameObject)EditorGUILayout.ObjectField(GUIContent.none, stageGeometry, typeof(GameObject), true);

        GUILayout.Label("Dead Zone Geom (Shift+4)", BoldIfActive(deadZoneGeom));
        deadZoneGeom = (GameObject)EditorGUILayout.ObjectField(GUIContent.none, deadZoneGeom, typeof(GameObject), true);


        GUILayout.Label("Custom Object (Shift+5)", BoldIfActive(customObject1));
        customObject1 = (GameObject)EditorGUILayout.ObjectField(GUIContent.none, customObject1, typeof(GameObject), true);

        GUILayout.Label("Custom Object (Shift+6)", BoldIfActive(customObject2));
        customObject2 = (GameObject)EditorGUILayout.ObjectField(GUIContent.none, customObject2, typeof(GameObject), true);

        GUILayout.Label("Custom Object (Shift+7)", BoldIfActive(customObject3));
        customObject3 = (GameObject)EditorGUILayout.ObjectField(GUIContent.none, customObject3, typeof(GameObject), true);

        GUILayout.Label("Custom Object (Shift+8)", BoldIfActive(customObject4));
        customObject4 = (GameObject)EditorGUILayout.ObjectField(GUIContent.none, customObject4, typeof(GameObject), true);

        GUILayout.Label("Custom Object (Shift+9)", BoldIfActive(customObject5));
        customObject5 = (GameObject)EditorGUILayout.ObjectField(GUIContent.none, customObject5, typeof(GameObject), true);

        EditorGUILayout.EndScrollView();
        EditorGUILayout.EndVertical();
        
        HandleInput();
    }

    private void HandleInput()
    {
        
        Event current = Event.current;
        if (current != null)
        {
            if ((current.type != EventType.KeyDown))
                return;

            if (current.shift)
            {
                switch (current.keyCode)
                {
                    case KeyCode.Alpha1:
                        ToggleGameObject(dualHead);
                        break;
                    case KeyCode.Alpha2:
                        ToggleGameObject(singleHead);
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
