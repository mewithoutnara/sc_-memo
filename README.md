# SC_memo
*general setting / key concept / practical codes*

* [Shortcut](#shortcut)
* [Symbols](#symbols)
  * [common Boolean operators](#common-Boolean-operators)
  * [punctuation marks](#punctuation-marks)
* [Basic Setup](#basic-setup)

<br>

## Shortcut

Boot Server: Cmd + B

Evaluate Selection, Line or Region: Cmd + Return
Evaluate Selection or Line: Shift + Return

Open post window: Cmd + P
Clear post window: Cmd + Shift + P

Stop the sound: Cmd + .

Text to Comment: Cmd + /

Open corresponding help file / Look up documentation for cursor: Cmd + D

Look up implementations for cursor: Cmd + I

Look up implementations: Shift + Cmd + I

explicitly name the arguments: tab after opening the parentheses

<br>

## Symbols

<br>

### common Boolean operators <br>

![common Boolean operators](https://github.com/mewithoutnara/sc_-memo/blob/main/general/common%20Boolean%20operators.png) <br>
<br>

### punctuation marks <br>

„ ” // Gänsefüßchen

；// semicolon, Semikolon

( ) // parentheses, Runde Klammern

[ ] // brackets, eckige Klammern

{ } // curly brackets/braces, Geschweifte Klammern

<br>

## Basic Setup

<br>

```supercollider

s.boot;
s.meter;
s.scope;
Server.KillAll;


////////////////  recording

s.makeWindow;

s.prepareForRecord; // if you want to start recording on a precise moment in time, you have to call this first.

s.record; // start recording. This can also be called directly, if it isn't imprtant when precisely you need to start.

s.pauseRecording; // pausable

s.record // start again

s.stopRecording; // this closes the file and deallocates the buffer recording node, etc.

x.free; // stop the synths


//////////////////////    how to specify audio device, route audio in/output


// overview - Return an Array of Strings listing the audio devices currently available on the system
ServerOptions.devices;
ServerOptions.inDevices; 
ServerOptions.outDevices;

// specify a device
o = Server.default.options; //make a alias
o.device ="Universal Audio Apollo Thunderbolt";     // use a specific soundcard
o.device = nil;            // use the system default soundcard (not working till now...)
o.device ="Built-in Output"; // this works

// route audio in/output
o.inDevice_("Built-in Microph"); // assign the input
o.outDevice_("Built-in Output"); // assign the output


Server.default.boot; // finally, boot the server
Server.default.reboot; // or, if the server was already running, reboot it



// Post the number of output channels
o.numOutputBusChannels.postln;

// Set them to a new number
o.numOutputBusChannels = 6; // The next time it boots, this will take effect


.play(0, 2) // 0 - start from which channel (0 is the first channel); 2 - how many channels





```
