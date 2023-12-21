# fwv-bungles

Bunglepaws' changes for Fallout Who Vegas

## Installation

Download [fwvBungles.esp](https://github.com/Bunglepaws/fwv-bungles/raw/master/data/fwvBungles.esp) and put it below the other FWV addons in your load order.

## Changes

Fixes for xNVSE compatibility:

- Add some missing array constructors

- enabled flag for fwvCompanion script to run at start (initializes arrays)

- fixed fwvFuncResetPosition (used in the console addon's scripts) crashing when running on null object
