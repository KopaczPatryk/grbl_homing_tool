# grbl_homing_tool

Flutter Windows project that simplifies leveling of the bed. Compatible with Ender 3 Pro v1 from 2018y.

## Disclaimer

I do not guarantee that its working, and I do not recommend it wont damage your hardware. Use at your own risk!

## Getting Started

Run build runner:

- flutter pub run build_runner build --delete-conflicting-outputs
- launch in debug to see console

## Known issues

Current implementation appears to have some trouble when sending data to serial port. I recommend double clicking controls for now :/

Sometimes port makes printer crash, you need to reset devices firmware.
I recommend **pronterface**