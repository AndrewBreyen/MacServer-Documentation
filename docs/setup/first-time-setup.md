# First Time Setup

## Setup Assistant
!!! quote "[Mac mini Essentials Documentation - Set up your Mac](https://support.apple.com/guide/mac-mini/set-up-your-mac-apd831707cb3/mac)"
    The first time your Mac mini starts up, Setup Assistant walks you through the simple steps needed to start using your new Mac. You can respond to all the prompts, or skip some steps and choose to complete them later.

Follow the steps in Setup Assistant, including internet connection, Apple ID sign-in, etc.

Keep unnecesary features turned off (screen time, Apple Pay, Store Files in iCloud, restore from backup, etc)

## Users
When first setting up the Mac, create a generic “MacMini” (or whatever type of Mac) admin user. Take note of the password chosen.

This user will be logged in and serving apps/content. 

## Network
The Mac needs to have a Static IP address for many purposes. 

1. Find the Ethernet Mac Address under Apple Menu (hold ++option++) -> System Information -> Network
2. Open the eero app
3. Go to Settings -> Network Settings -> Reservations and Port Forwarding
4. Pick 'Add a reservation'
5. Scroll to the bottom of the list, and choose 'Enter manually'
6. Enter an IP Address to use. For convienence, use a low-number IP address (192.168.4.2)

    The IP address spreified must not be already in use, and must be within the subnet range.
    
    Keep the first three groups of numbers the same, and only change the last group. (eg 192.168.4.##)

7. Enter the MAC Address noted previously from System Information, using format `XX:XX:XX:XX:XX:XX`
8. Click 'Save'
9. Reboot Mac, and ensure that IP address listed in System Preferences is 192.168.4.2

!!! info "If the IP address does not take effect:"
    1. Reboot the mac again -- it may need to re-handshake with the network
    2. Forget the network and re-join
    3. Reboot the eero network from the eero app

## Once to the desktop...
1. Create Shared Folders
    - `/Users/Shared/Scans`
    - `/Users/Shared/AllShare`
2. Create other users:
    - andrew
    - matt
    - dan
    - nancy