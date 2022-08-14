# HomePlus - Documentation, Examples & Dev Notes

This repo is dedicated to the further development of the HomePlus Mod, either by me, the community or the Retroid Team.

## Available Inputs on the RP2+

Here's a [log]() of all the available / usable inputs on the RP2+, everything else will be ignored / discarded by the device. 

## Input Values / Function Table

Here's a companion [table]() that explains what those available / usable input do.

## Dev / Testing Requirements

- ADB & Universal Drivers Installed : https://forum.xda-developers.com/t/tool-windows-adb-fastboot-may-2022.3944288/ 
- USB Debugging Enabled 
> Settings > System > About RP2+ > Tap on the Build number x5 > Back to System > Developer Options > USB Debugging

## Simulated Keys Syntax

To open the shell / connection between the PC & the RP2+ use the command: adb shell

### L3 Down Command Sequence (Stuck Down):

> sendevent /dev/input/event5 1 317 1; sendevent /dev/input/event5 0 0 0;

### L3 Down Command Sequence (Stuck Up):

> sendevent /dev/input/event5 1 317 0; sendevent /dev/input/event5 0 0 0;

### L3 Press & Release (adb) :

> <sub>sendevent /dev/input/event5 1 317 1; sendevent /dev/input/event5 0 0 0; sendevent /dev/input/event5 1 317 0; sendevent /dev/input/event5 0 0 0;</sub>

### Hold / Clear Inputs Queue Command:

> sleep 0.3 

This can be modified at wish, if you need to hold down a key for 3 seconds or more, just replace 0.3 to 3 (or whatever you need).

## L3 Press & Release (HomePlus Mod)

> <sub> sleep 0.3 ; sendevent /dev/input/event5 1 317 1; sendevent /dev/input/event5 0 0 0;  sleep 0.3 ; sendevent /dev/input/event5 1 317 0; sendevent /dev/input/event5 0 0 0;</sub>

## Automate Examples 

- Let's Go Button: 
- Launch App: 
- Simulated Key Press:
- Simulated Key Press + Function:

# Dev Notes

