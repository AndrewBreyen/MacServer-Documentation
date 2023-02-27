# Docker

!!! info
    Docker is used to create Containers.

    "A Docker container image is a lightweight, standalone, executable package of software that includes everything needed to run an application: code, runtime, system tools, system libraries and settings." ([docker.com](https://www.docker.com/resources/what-container/))

Download and install Docker from [https://www.docker.com/](https://www.docker.com/)


Once installed, Open Settings and:

1. General 
    - Check 'Start Docker Desktop when you log in'
    - Uncheck 'Open Docker Dashboard at startup'
2. Resources -> Advanced
    - CPUs: 2
    - Memory: 2.00 GB
    - Swap: 1 GB
    - Disk image size: 16 GB
3. Resources -> File Sharing
    - Delete any existing file shares, and add:
    - `/Users/Shared/nodered_data`
    - `/Users/Shared/xmltvdata`