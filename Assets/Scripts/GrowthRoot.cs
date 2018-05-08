using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;

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

    public int seed;
    private int numSegmentsPrevious = 0;

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
                Segment segment = new Segment(Instantiate(stemPrefab), Random.Range(segmentRotationOffsetRandom.x, segmentRotationOffsetRandom.y));
                segment.rb = segment.gameObject.GetComponent<Rigidbody>();
                segment.fj = segment.gameObject.GetComponent<FixedJoint>();
                segment.gameObject.name = "Segment " + (i + 1);
                segment.gameObject.transform.parent = transform;

                if (i == 0)
                    segment.fj.connectedBody = GetComponent<Rigidbody>();
                else
                    segment.fj.connectedBody = prefabList[i - 1].rb;

                prefabList.Add(segment);
            }
        }
        numSegmentsPrevious = numSegments;

        for (int i = 0; i < numSegments; i++)
        {
            float segmentPercentage = i / (float)numSegments;

            prefabList[i].gameObject.transform.position = transform.position + transform.up * segmentPercentage * stemLength + growthForces * i;
            prefabList[i].gameObject.transform.localRotation = Quaternion.Euler(0 + growthForces.x * i, i * (segmentRotationOffset + prefabList[i].rotationOffset) + growthForces.y * i, 0 + growthForces.z * i);
            //prefabList[i].gameObject.transform.rotation = Quaternion.AngleAxis(i * (segmentRotationOffset + prefabList[i].rotationOffset), transform.ro);
            prefabList[i].gameObject.transform.localScale = segmentScale * Mathf.Clamp01(stemShape.Evaluate(segmentPercentage) * (growthProgression - segmentPercentage));
            
        }
    }

	// Update is called once per frame
	void Update () {

        if(numSegments != numSegmentsPrevious)
            FillPrefabList();

        for (int i = 0; i < numSegments; i++)
        {
            float segmentPercentage = i / (float)numSegments;
            prefabList[i].gameObject.transform.localScale = segmentScale * Mathf.Clamp01(stemShape.Evaluate(segmentPercentage) * (growthProgression - segmentPercentage));
            prefabList[i].rb.mass = Mathf.Clamp01(stemShape.Evaluate(segmentPercentage) * (growthProgression - segmentPercentage));
            //prefabList[i].rb.AddForce(growthForces);

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
        public FixedJoint fj;

        public Segment(GameObject _gameObject, float _rotationOffset)
        {
            gameObject = _gameObject;
            rotationOffset = _rotationOffset;
            rb = null;
            fj = null;
        }
    }
}
