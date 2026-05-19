# Jetson Orin Nano Setup Guide

This doc provides step-by-step guidance on bringing a Jetson Orin Nano from a fresh board to being fully ready for AI development.

## Hardware Required

- NVIDIA Jetson Orin Nano Developer Kit
- NVMe SSD
- USB-C cable
- Windows host PC
- External power supply

# 1. Flash JetPack

1. Install NVIDIA SDK Manager on host PC, then connect the Jetson to host through USB-C
2. Put the Jetson into recovery mode by shorting the FC REC and GROUND pins, then plugging in the barrel power adapter
3. Launch the SDK Manager, log-in and select the appropriate options
4. If Jetson Nano is not detected, make sure to use Type-C to Type-C genuine cable 
5. During flashing, do not disconnect the power, best to leave the Orin alone or there might be a risk of bricking the board

