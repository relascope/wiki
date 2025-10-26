# music-knowhow
Collection of tutorials, samples, know-how...


# DaVinci Resolve

does not work with AVI

Edit (bottom) => rightclick Audio => normalize audio levels


# Rotate video 90 degrees clockwise

    ffmpeg -i in.mov -vf "transpose=1" out.mov

0 = 90° counterclockwise and vertical flip (default)

1 = 90° clockwise

2 = 90° counterclockwise

3 = 90° clockwise and vertical flip

# Guitar Pro (gp5)

Guitar Pro is not free :-(

Tux Guitar
----------
Just works

MuseScore
---------
gp5 files can be opened with MuseScore. However, you only get the notes. 

- Create new file from template => Solo => Guitar with tabulature.
- Select All, Copy, Paste into newly created file

=> Linked Staves



# Audio to Midi in Realtime (monophon)

Why?
-----
- compose with your voice
- play cello with your guitar
- ...

How?
-----
Dodo MIDI 2 is a VST3 plugin and works fine on some platforms, including Ardour on Linux. 

If you are using **Logic Pro**, you've got a problem, you have to work around:
- Use Kushview Element as a host for the VST3 plugin
- Configure Element for your preferred audio input
- Configure Element to use Logic Pro Virtual In as the MIDI Output Device

**Voila!**

Technical details
------------------
Logic Pro only supports Audio Unit plugins in version V2 and partially in V3. 

AU Plugins V2 do not support Audio input and MIDI Output. 

AU-VST-bridges don't work, cost money or may not work. 

For more complex projects
--------------------------
- Buy Vochlea Dubler 2
- use Melodyne (polyphonic, not realtime)


# Audio to MIDI

- NeuralNote (uses Spotify's AI Plugin)
