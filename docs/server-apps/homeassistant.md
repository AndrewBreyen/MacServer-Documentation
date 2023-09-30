# Home Assistant

```
Last tested version: 

Virtualbox: Version 7.0.11 r158813 (Qt5.15.2)
macOS: Ventura 13.5.1
Home Assistant:

Home Assistant 2023.8.3
Supervisor 2023.08.1
Operating System 10.4
Frontend 20230802.1 - latest
```

!!! warning
    Make sure you are using Virtualbox Version `7.0.11 r158813 (Qt5.15.2)`, or this may not work. 





## Prerequisites
Virtualbox 
[https://www.virtualbox.org/wiki/Downloads](https://www.virtualbox.org/wiki/Downloads)

Version required: `VirtualBox-7.0.11` 

## Download
Download the latest VDI from [virtualbox.org/wiki/Testbuilds](https://www.virtualbox.org/wiki/Testbuilds)

Latest validated version: `haos_ova-10.4.vdi`

## Install
### Create VM
Create VM as detailed at [home-assistant.io/installation/macos/#hypervisor-specific-configuration](https://www.home-assistant.io/installation/macos/#hypervisor-specific-configuration)

Minimum recommended config:
```
2 GB Memory
32 GB Storage
2vCPU
```

Config I use:
```
4096 MB (4 GB) Memory
4vCPU
```

![vm-config.png](../img/server-apps/homeassistant/vm-config.png){ width="400"}
![vm-hardware.jpeg](../img/server-apps/homeassistant/vm-hardware.jpeg){ width="400"}
![vm-harddisk.png](../img/server-apps/homeassistant/vm-harddisk.png){ width="400"}


### Post VM Creation
After creating the VM, configure it. 


- Edit the Settings of the VM and go to `System > Motherboard`. Select `Enable EFI`.
- Then go to `Network > Adapter 1`. Choose `Bridged Adapter` and choose your network adapter.



## Usage
### Devices and Services
There are four services that are used

- Tuya
- deCONZ
- Roku
- Jellyfin


#### Tuya Platform plugin
- Name: TuyaPlatform
- Username: andrew.breyen@gmail.com
- Password: [REDACTED]
- Access ID: [REDACTED]
- Access Key: [REDACTED]
- Language Code: en
- Project Type: PaaS
- PaaS Platform: Smart Life
- Country Code: 1

!!! note "Note on Tuya Password"
    - Tyua account - for andrew's devices only
    - Smart Life account - for nowthen devices only

!!! note "Note on Access ID/Access Key:"

    Find Access ID/Access key at [Tuya Cloud](https://iot.tuya.com/cloud)

    | Project Name/ Description | Usage                        |
    |---------------------------|------------------------------|
    | Home Assistant - Andrew   | Andrew Home Assistant        |
    | Homebridge - Andrew       | Andrew Homebridge Access     |
    | Homebridge - Nowthen      | Current Nowthen cloud access |
    | Home (DELETE NOTUSED)     | Not used for anything        |

Find Access ID/Access key


#### deCONZ Plugin

The deCONZ plugin allows integration with the deCONZ software, which is used for Zigbee device management.

- **Platform Name:** deCONZ

##### Configuration Details

- **Host:** [IP Address of your deCONZ instance]
- **Port:** [Port Number of your deCONZ instance]
- **API Key:** [API Key for deCONZ integration]
- **Other Configurations:** [Any additional configurations required]


#### Roku Plugin

The Roku plugin enables interaction with Roku devices, providing control and status updates.

- **Platform Name:** Roku

##### Configuration Details

- **Roku IP Address:** [IP Address of your Roku device]
- **API Key:** [API Key for Roku integration]
- **Other Configurations:** [Any additional configurations required]


#### Jellyfin Plugin

The Jellyfin plugin allows integration with the Jellyfin media server, offering media streaming and management.

- **Platform Name:** Jellyfin

##### Configuration Details

- **Jellyfin Server:** [URL or IP Address of your Jellyfin server]
- **API Key:** [API Key for Jellyfin integration]
- **Other Configurations:** [Any additional configurations required]


### Scripts
[https://github.com/AndrewBreyen/homeassistant-scripts](https://github.com/AndrewBreyen/homeassistant-scripts)


