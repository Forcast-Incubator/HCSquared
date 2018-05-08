using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Playables;

public class StartAnimationAtRandomTime : MonoBehaviour {

    public PlayableDirector pd;

	// Use this for initialization
	void Start () {
        pd.time = Random.Range(0, (float)pd.duration);

    }
}
