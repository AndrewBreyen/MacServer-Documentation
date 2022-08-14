# First Time Setup
## Users
When first setting up the Mac, create a generic “MacMini” (or whatever type of Mac) admin user. Take note of the password chosen.

This user will be logged in and serving apps/content. Other users will be created later, but just create this user for now. 

- Username: macmini 

## Network
The Mac needs to have a Static IP address for many purposes. 

1. Find the Ethernet Mac Address under Apple Menu (hold ++option++) -> System Information -> Network
2. In modem settings (192.168.0.1) -> Advanced Setup -> DHCP Reservation, enter (or choose) the MAC address and set a static IP (192.168.0.2)
3. In System Preferences -> Network -> Ethernet -> Advanced change ‘Configure IPv4’ to Using DHCP with manual address. Enter 192.168.0.2 for IP address
4. Reboot mac, and ensure that IP address listed in System Preferences is 192.168.0.2