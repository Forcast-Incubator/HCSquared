using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SendPositionAsMIDINote : MonoBehaviour {

    public MidiChannel channel = MidiChannel.Ch1;

    public Vector3Int axisNotes = new Vector3Int(48, 49, 50);
    public Transform lightPosition;
    public Transform minX;
    public Transform maxX;
    public Transform minY;
    public Transform maxY;
    public Transform minZ;
    public Transform maxZ;

    Vector3 axisAsPercentage = new Vector3(0.5f, 0.5f, 0.5f);

    private bool sendFrame = true;

    void Start()
    {
        MidiBridge.instance.Warmup();

    }
    void Update()
    {
        if (sendFrame)
        {
            axisAsPercentage.x = Mathf.Clamp01((lightPosition.position.x - minX.position.x) / (maxX.position.x - minX.position.x));
            axisAsPercentage.y = Mathf.Clamp01((lightPosition.position.y - minY.position.y) / (maxY.position.y - minY.position.y));
            axisAsPercentage.z = Mathf.Clamp01((lightPosition.position.z - minZ.position.z) / (maxZ.position.z - minZ.position.z));

            /*
            MidiOut.SendNoteOn(channel, axisNotes.x, axisAsPercentage.x);
            MidiOut.SendNoteOn(channel, axisNotes.y, axisAsPercentage.y);
            MidiOut.SendNoteOn(channel, axisNotes.z, axisAsPercentage.z);
            */
            Debug.Log(axisAsPercentage.ToString("F4"));

            sendFrame = false;
        } else
        {
            /*
            MidiOut.SendNoteOff(channel, axisNotes.x);
            MidiOut.SendNoteOff(channel, axisNotes.y);
            MidiOut.SendNoteOff(channel, axisNotes.z);
            */

            sendFrame = true;
        }
        
    }
}
