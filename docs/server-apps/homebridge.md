# Homebridge

!!! info
    Homebridge is used for Home Controls of Plugs, Garage Door.

## Install locally

Follow instrictions on the README of the [Homebridge Repo](https://github.com/homebridge/homebridge/wiki/Install-Homebridge-on-macOS)

Once installed, and hb-service has been ran:

In the Web UI:

1. Click "Get Started"
2. Create an admin user and specify password
3. Click "Open Dashboard"

## Install plugins
Homebridge Tuya Platform [https://github.com/tuya/tuya-homebridge](https://github.com/tuya/tuya-homebridge)

## Configure Homebridge Tuya Platform plugin
- Name: TuyaPlatform
- Username: andrew.breyen@gmail.com
- Password: [REDACTED] -- password of Tuya account
- Access ID: [REDACTED]
- Access Key: [REDACTED]
- Language Code: en
- Project Type: PaaS
- PaaS Platform: Smart Life
- Country Code: 1

## Setup and Configure
Once the Homebridge Tuya Platform plugin is added, click the power icon on the top right to restart

Once back up, click `Accessories` and verify that all accessories have been added

Scan QR code from Status screen using Home App -> Add Accessories

Add the bridge to room `ZAccessories`, continue setup within Home app, place accessories into correct rooms
