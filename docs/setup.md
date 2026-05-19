# Jetson Orin Nano Setup Guide

This doc provides step-by-step guidance on bringing a Jetson Orin Nano from a fresh board to being fully ready for AI development.

## Hardware Required

- NVIDIA Jetson Orin Nano Developer Kit
- NVMe SSD
- USB-C cable
- Windows host PC
- External power supply

## 1. Flash JetPack

1. Install NVIDIA SDK Manager on host PC, then connect the Jetson to host through USB-C
2. Put the Jetson into recovery mode by shorting the FC REC and GROUND pins, then plugging in the barrel power adapter
3. Launch the SDK Manager, log-in and select the appropriate options
4. If Jetson Nano is not detected, make sure to use Type-C to Type-C genuine cable 
5. During flashing, do not disconnect the power, best to leave the Orin alone or there might be a risk of bricking the board

## 2. Verify OS and Network Connectivity
1. After flashing, the Jetson will reboot by itself (force reboot, if not automatic). If it boots into Jetpack succesfully, that's a welcoming sign.
2. Hook up the Jetson to peripherals and put in the following commands:
```bash
dpkg-query --show nvidia-jetpack # shows Jetpack version
cat /etc/nv_tegra_release # shows Linux version
ip addr | grep usb # verify USB networking
```
3. Unplug peripherals, leave the USB-C connected to the host PC (This connection will be required everytime we need to SSH into the Jetson)


