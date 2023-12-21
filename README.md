# fwv-bungles

Bunglepaws' changes for Fallout Who Vegas

## Installation

1. Download and install the latest [xNVSE](https://github.com/xNVSE/NVSE) and [JIP LN NVSE Plugin](https://www.nexusmods.com/newvegas/mods/58277)

2. Download and install Fallout Who Vegas Complete Edition from [its github](https://github.com/Fallout-Who-Vegas/Fallout-Who-Vegas-Complete-Edition), following those instructions

3. Download [fwvBungles.esp](https://github.com/Bunglepaws/fwv-bungles/raw/master/data/fwvBungles.esp) and install it into your Fallout New Vegas "Data" directory

4. Put fwvBungles.esp below the other FWV addons in your load order.

## Changes

Fixes for xNVSE compatibility:

- Add some missing array constructors

- Recompiled a swinging cable animation script to fix error spam

- enabled flag for fwvCompanion script to run at start (initializes arrays)

- fixed fwvFuncResetPosition (used in the console addon's scripts) crashing when running on null object
