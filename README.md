# HomePlus - Documentation, Examples & Dev Notes

This repo is dedicated to the further development of the HomePlus Mod, either by me, the community or the Retroid Team.

# What does HomePlus Mod actually do?

1) It removes the default RP2+ key layout file (/system/usr/keylayout/Vendor_2020_Product_0111.kl) from the RP2+ 
2) Since the default key layout file is now "missing", the device will automatically assign the universal key layout (Generic.kl) to the RP2+
3) It then changes the value of the HOME button to the obscure modifier (META_LEFT) in the universal key layout (key 102 META_LEFT)
4) Lastly, it copies the modified universal layout to the designed folder (/system/usr/keylayout/) & gives it the required permissions (644)
5) The rest of the script just verifies that all files are present when installing / removing HomePlus, that' all.

## Dev / Testing Requirements

#### PC / Laptop 

- ADB & Universal Drivers Installed : https://forum.xda-developers.com/t/tool-windows-adb-fastboot-may-2022.3944288/ 

#### RP2+

- USB Debugging Enabled 
> Settings > System > About RP2+ > Tap on the Build number x5 > Back to System > Developer Options > USB Debugging
- HomePlus Mod: https://github.com/acatone-git/HomePlus_Mod
- Automate: https://llamalab.com/automate/
- Terminal Emulator : https://github.com/jackpal/Android-Terminal-Emulator

## Available Inputs on the RP2+

Here's a log of all the available / usable inputs on the RP2+, everything else will be ignored / discarded by the device: [Available_Inputs]()

## Input Values / Function Table

Here's a companion table that explains what those available / usable input do: [Values_Functions]()

## Simulate Keys Press Syntax

To open the shell / connection between the PC & the RP2+ use the command: adb shell

#### L3 Down Command Sequence (Stuck Down):

> sendevent /dev/input/event5 1 317 1; sendevent /dev/input/event5 0 0 0;

#### L3 Down Command Sequence (Stuck Up):

> sendevent /dev/input/event5 1 317 0; sendevent /dev/input/event5 0 0 0;

#### L3 Press & Release (adb) :

> <sub>sendevent /dev/input/event5 1 317 1; sendevent /dev/input/event5 0 0 0; sendevent /dev/input/event5 1 317 0; sendevent /dev/input/event5 0 0 0;</sub>

#### Hold / Clear Inputs Queue Command:

> sleep 0.3 

This can be modified at wish, if you need to hold down a key for 3 seconds or more, just replace 0.3 to 3 (or whatever you need).

#### L3 Press & Release (HomePlus Mod)

> <sub> sleep 0.3 ; sendevent /dev/input/event5 1 317 1; sendevent /dev/input/event5 0 0 0;  sleep 0.3 ; sendevent /dev/input/event5 1 317 0; sendevent /dev/input/event5 0 0 0;</sub>

## Automate Examples 

- [Let's Go Button] 
- [Launch App]
- [Simulated Key Press]
- [Simulated Key Press + Function]

## Useful Commands

- "getevent -p" - Lists all available inputs
- "getevent" - Live Input Capture
- "dumpsys" - Shows which layout file (.kl) is being assigned to all the available inputs
- "stat -c "%A %a %N" *" - Shows the file permissions assigned to each file in a folder
- "chmod 644 FILE_NAME" - Gives "rw-rw-r--" permission to a file
- "input text "YOUR_TEXT" - Sends texts from the PC to the device
