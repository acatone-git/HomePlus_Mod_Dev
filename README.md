# HomePlus - Documentation, Examples & Dev Notes

This repo is dedicated to the further development of the HomePlus Mod, either by me, the community or the Retroid Team.

## Available Inputs on the RP2+

Here's a [log]() of all the available / usable inputs on the RP2+, everything else will be ignored / discarded by the device. 

## Input Values / Function Table

Here's a companion [table]() that explains what those available / usable input do.

## Button Press / Press & Hold Syntax

### L3 Down Command Sequence (Stuck Down):

> sendevent /dev/input/event5 1 317 1
> sendevent /dev/input/event5 0 0 0

### L3 Down Command Sequence (Stuck Up):

> sendevent /dev/input/event5 1 317 0
> sendevent /dev/input/event5 0 0 0

### L3 Press & Release (adb) :

> <sub>sendevent /dev/input/event5 1 317 1; sendevent /dev/input/event5 0 0 0; sendevent /dev/input/event5 1 317 0; sendevent /dev/input/event5 0 0 0;</sub>

### Hold / Clear Inputs Queue Command:

> sleep 0.3 

This can be modified at wish, if you need to hold down a key for 3 seconds just replace 0.3 to 3.

## L3 Press & Release (HomePlus)

> <sub> sleep 0.3 ; sendevent /dev/input/event5 1 317 1; sendevent /dev/input/event5 0 0 0;  sleep 0.3 ; sendevent /dev/input/event5 1 317 0; sendevent /dev/input/event5 0 0 0;</sub>

## Automate Examples 



# Dev Notes

