using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TriggerNote : MonoBehaviour {

    public MidiChannel channel = MidiChannel.Ch1;

    public int noteNumber = 48;
    public float velocity = 0.9f;

    public bool playingNote = false;
    private bool playingLastFrame = false;

    void Start()
    {
        MidiBridge.instance.Warmup();

    }
    void Update()
    {
        if((playingNote == true) && (playingLastFrame == false))
        {
            MidiOut.SendNoteOn(channel, noteNumber, velocity);
            playingLastFrame = true;
            Debug.Log("SENT NOTE: " + noteNumber);
        } else if ((playingNote == false) && (playingLastFrame == true))
        {
            MidiOut.SendNoteOff(channel, noteNumber);
            playingLastFrame = false;
        }
    }
}
