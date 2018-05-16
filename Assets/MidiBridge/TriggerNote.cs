using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TriggerNote : MonoBehaviour {

    public MidiChannel channel = MidiChannel.Ch1;

    public int noteNumber = 48;
    public bool playingNote = false;
    public float velocity = 0.9f;
    public float duration = 0.1f;

    private float timer = 0;

    void Start()
    {
        MidiBridge.instance.Warmup();

    }
    void Update()
    {
        if(playingNote)
        {
            if(timer == 0)
            {
                MidiOut.SendNoteOn(channel, noteNumber, velocity);
                timer += Time.deltaTime;
            } else if(timer < duration)
            {
                timer += Time.deltaTime;
            } else
            {
                MidiOut.SendNoteOff(channel, noteNumber);
                timer = 0;
                playingNote = false;
            }
        }
    }
}
