## Users
When first setting up the Mac, create a generic “MacMini” (or whatever type of Mac) admin user. This user will be logged in and serving apps/content. Other users will be created later, but just create this user for now. 

## Network
The Mac needs to have a Static IP address. 

1. Find the Ethernet Mac Address under Apple Menu (hold OPTION) -> System Information -> Network
2. In modem settings (192.168.0.1) -> Advanced Setup -> DHCP Reservation, enter (or choose) the MAC address and set a static IP (192.168.0.2)
3. In System Preferences -> Network -> Ethernet -> Advanced change ‘Configure IPv4’ to Using DHCP with manual address. Enter 192.168.0.2 for IP address
4. Reboot mac, and ensure that IP address listed in System Preferences is 192.168.0.2

## macOS Settings
Enable automatic login for the MacMini user: 
	System Preferences -> Users and Groups -> Login Options

Automatically start apps on MacMini user login

- Docker
- Jellyfin

Energy Saver:

- Turn Display Off after: never
- Prevent your Mac from automatically sleeping when the display is off
- Put hard disks to sleep when possible
- Wake for network access
- Start up automatically after a power failure
- Enable Power Nap

Full Disk Access:

- Ensure /bin/bash has full disk access in System Preferences -> Security and Privacy -> Privacy 
