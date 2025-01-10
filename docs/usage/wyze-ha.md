# Getting Wyze Camera into Home Assistant

!!! bug "Depricated"
    This documentation is deprecated. The current preferred method is to use the [docker-wyze-bridge](https://github.com/mrlt8/docker-wyze-bridge) in Home Assistant.

    You can run `docker-wyze-bridge` in a [container using Docker](https://github.com/mrlt8/docker-wyze-bridge/wiki#docker-compose-recommended) or as a [Home Assistant Addon](https://github.com/mrlt8/docker-wyze-bridge/wiki/Home-Assistant)
    

!!! warning
    Virtualbox is required to run Home Assistant. The latest version of Virtualbox has a bug when running on macOS 13.3. 

    This bug prevents the Home Assistant VM from booting entirely. A fix is hopefully in the next version. 

    See forum post here: [https://forums.virtualbox.org/viewtopic.php?f=8&t=109003](https://forums.virtualbox.org/viewtopic.php?f=8&t=109003)



## Prerequisites
Virtualbox 
[https://www.virtualbox.org/wiki/Downloads](https://www.virtualbox.org/wiki/Downloads)

Latest validated version: `VirtualBox-7.0.10a` 

## Download
Download the latest VDI from [home-assistant.io/installation/macos](https://www.home-assistant.io/installation/macos)

Latest validated version: `haos_ova-10.4.vdi`

## Install
