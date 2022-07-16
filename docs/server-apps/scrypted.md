# Scrypted
Scrypted is used to serve Video Camera Content to Apple Home.

## Install locally
[https://github.com/koush/scrypted/wiki/Installation:-Mac](https://github.com/koush/scrypted/wiki/Installation:-Mac)

## Install plugins
- HomeKit
- RTSP Camera Plugin
- Rebroadcast Plugin

## Configure plugins
RTSP cameras

- Add 2 cameras (Front Porch, Backyard), username: wyzecam, Password: wyzecam, Snapshot URL: [blank], RTSP Stream URL: rtsp://wyzecam:wyzecam@[IP ADDR OF CAMERA]/live

Homekit

- View console of plugin to see QR code, add accessory via iOS Home app. 
- Add the bridge to room ‘ZAccessories’, continue setup within Home app, place accessories into correct rooms

##  Additional plugins used by Scrypted
OpenCV: [https://opencv.org/](https://opencv.org/)  
Used to detect motion and send homekit notifications
