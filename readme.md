# launchbox-VAPF-helper
This is a helper program. All credit for VAPF belongs with its author.
VAPF can be found at https://www.orphanedgames.com/APF/apf_emulation/apf_emulation.html
This helper program is to enable setting up VAPF in LaunchBox. This allows you to emulate APF [MP-1000](https://emulation.gametechwiki.com/index.php/APF_MP1000_emulators)(/Imagination Machine[^1]) games.

## Steps to set up Launchbox
1. Setup
1a. Download VAPF from link above.
1b. Save to your LaunchBox emulators folder
1c. Clone this repo inside the VAPF directory
2. Normal import
2a. Import your ROMs folder in LaunchBox as normal.
2b. Select APF Imagination Machine when choosing a platform
2c. On the Emulator page of the wizard, click "Add"
3. Configuring emulator
3a. For application path, use `Emulators\VAPF\VAPF_run.exe`
3b. Tick 'Extract ROM archives' option

## Compatibility
Currently working for MP-1000 ROMs in the No-Intro format (`.zip`ped `.bin` files).
I haven't yet figured out how to make casette `.wav` files run in VAPF...

[^1]: *(To save you the time searching, the MP-1000 is a consolized version of the Imagination Machine. It was common practice in the second generation of consoles for PC manufacturers to do this; they would take their 8-bit computer, add peripherals to it, and put it in a console-shaped box.)*
