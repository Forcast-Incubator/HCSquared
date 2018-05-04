using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class SceneLoad : MonoBehaviour {

    [SerializeField]
    private string sceneName = "MainScene";

	// Use this for initialization
	/*void Start () {
        SceneManager.LoadScene(sceneName, LoadSceneMode.Additive);

        Scene loadedScene = SceneManager.GetSceneByName(sceneName);

        Debug.Log("Rootcount: "+loadedScene.rootCount);

        Transform root = loadedScene.GetRootGameObjects()[0].transform;
        

        root.position = new Vector3(0, 200, 0);
    }*/
    private IEnumerator Start()
    {
        yield return SceneManager.LoadSceneAsync(sceneName, LoadSceneMode.Additive);
        Scene s = SceneManager.GetSceneByName(sceneName);
        GameObject[] g = s.GetRootGameObjects();
        g[0].transform.position = new Vector3(0, 100, 0);
    }
}
