# music-knowhow
Collection of tutorials, samples, know-how...


# Rotate video 90 clockwise

    ffmpeg -i in.mov -vf "transpose=1" out.mov


# Guitar Pro (gp5)

Guitar pro is not free :-(

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
- use Kushview Element as a host for the VST3 plugin
- configure Element for your preferred audio input
- configure Element to use Logic Pro Virtual In as MIDI Output Device

**Voila!**

Technical details
------------------
Logic Pro only supports Audio Unit plugins in the version V2 and partially V3. 

AU Plugins V2 do not support Audio input and MIDI Output. 

AU-VST-bridges don't work, cost money or may not work. 

For more complex projects
--------------------------
- Buy Vochlea Dubler 2
- use Melodyne (polyphon, not realtime)
