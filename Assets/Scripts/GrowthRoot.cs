using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;
using UnityEngine.Playables;


public class GrowthRoot : MonoBehaviour {

    public GameObject stemPrefab;
    public float stemLength = 1.0f;
    public int numSegments = 10;
    public Vector3 segmentScale = Vector3.one;
    //public Vector2 segmentScaleRandom = Vector2.zero;
    public Vector3 growthForces = Vector3.zero;
    public float segmentRotationOffset = 30;
    public Vector2 segmentRotationOffsetRandom = Vector2.zero;
    public AnimationCurve stemShape;
    private List<Segment> prefabList;

    public Color leafColor;
    public bool animating = true;

    public int seed;
    private int numSegmentsPrevious = 0;

    private float growthProgressionCache = 0;

    [Range(0,1)]
    public float growthProgression = 0;

	// Use this for initialization
	void Awake () {
        numSegmentsPrevious = 0;
        prefabList = new List<Segment>();

        FillPrefabList();
        Random.InitState(seed);
        
    }

    void FillPrefabList()
    {
        growthProgressionCache = growthProgression;
        growthProgression = 1;
        if (numSegmentsPrevious > numSegments)
        {
            for (int i = numSegmentsPrevious-1; i >= numSegments; i--)
            {
                Destroy(prefabList[i].gameObject);
                prefabList.RemoveAt(i);
            }
        }
        else if(numSegmentsPrevious < numSegments)
        {
            for (int i = numSegmentsPrevious; i < numSegments; i++)
            {
                prefabList.Add(new Segment(Instantiate(stemPrefab), Random.Range(segmentRotationOffsetRandom.x, segmentRotationOffsetRandom.y)));
                prefabList[prefabList.Count - 1].gameObject.name = "Segment " + (i + 1);
                prefabList[prefabList.Count - 1].gameObject.transform.parent = transform;
            }
        }
        numSegmentsPrevious = numSegments;

        for (int i = 0; i < numSegments; i++)
        {
            float segmentPercentage = i / (float)numSegments;

            prefabList[i].gameObject.transform.position = transform.position + transform.up * segmentPercentage * stemLength;
            prefabList[i].gameObject.transform.localRotation = Quaternion.Euler(0, i * (segmentRotationOffset + prefabList[i].rotationOffset), 0);
            //prefabList[i].gameObject.transform.rotation = Quaternion.AngleAxis(i * (segmentRotationOffset + prefabList[i].rotationOffset), transform.ro);
            prefabList[i].gameObject.transform.localScale = segmentScale * Mathf.Clamp01(stemShape.Evaluate(segmentPercentage) * (growthProgression - segmentPercentage));

            HingeJoint hj = prefabList[i].gameObject.GetComponent<HingeJoint>();

            if (i == 0)
            {
                hj.connectedBody = GetComponent<Rigidbody>();
            }
            else
            {
                //Rigidbody rb = prefabList[i-1].gameObject.GetComponent<Rigidbody>();
                hj.connectedBody = prefabList[i - 1].rb;
            }
        }

        growthProgression = growthProgressionCache;
    }

	// Update is called once per frame
	void Update () {

        if(numSegments != numSegmentsPrevious)
            FillPrefabList();

        for (int i = 0; i < numSegments; i++)
        {
            float segmentPercentage = i / (float)numSegments;
            float segmentSizeFromCurve = stemShape.Evaluate(segmentPercentage) * Mathf.Clamp01(growthProgression / (segmentPercentage + 0.05f));
            prefabList[i].gameObject.transform.localScale = segmentScale * segmentSizeFromCurve;
            prefabList[i].rb.mass = Mathf.Clamp(segmentSizeFromCurve, 0.1f, 1.0f);

            prefabList[i].mr.material.SetColor("_Color", leafColor);

            if (!animating)
                prefabList[i].pd.Stop();
            /*if (waitAmount > waitCounter)
            {
                prefabList[i].cf.force = Vector3.zero;
                waitCounter += Time.deltaTime;
            }
            else
            {
                prefabList[i].cf.force = growthForces;
            }
            */
            prefabList[i].cf.force = growthForces;
        }
    }

    private void OnDrawGizmosSelected()
    {
        UnityEditor.Handles.color = Color.yellow;
        UnityEditor.Handles.DrawWireDisc(transform.position, transform.up, 0.2f);
        UnityEditor.Handles.DrawLine(transform.position, transform.position + transform.up * 0.5f);
    }

    struct Segment
    {
        public GameObject gameObject;
        public float rotationOffset;
        public Rigidbody rb;
        public ConstantForce cf;
        public MeshRenderer mr;
        public PlayableDirector pd;

        public Segment(GameObject _gameObject, float _rotationOffset)
        {
            gameObject = _gameObject;
            rotationOffset = _rotationOffset;
            rb = gameObject.GetComponent<Rigidbody>();
            cf = gameObject.GetComponent<ConstantForce>();
            mr = gameObject.GetComponentInChildren<MeshRenderer>();
            pd = gameObject.GetComponentInChildren<PlayableDirector>();
        }
    }
}
