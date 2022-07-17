# Live TV Guide Data not up to date

## Use Remote Desktop to connect to the computer:

1. Open Apple Remote Desktop (ARD)
2. Select ‘MacServer’ in the list
3. Choose Interact -> Control


1. Ensure that the Docker Container is healthy and running
2. Open Docker Desktop Dashboard by cliching the whale/container ship icon in the taskbar and choosing 'Dashboard'
   
    ![docker-desktop-dashboard.png](../img/troubleshooting/docker/docker-desktop-dashboard.png){ width="200" }
 
      1. Click on 'zap2xml'
      2. Ensure there are logs either being streamed:
    
        ![docker-desktop-dashboard.png](../img/troubleshooting/docker/zap2xml-logs-parsing.png){ width="150" }
         
        or you see the completed message:
        ````
	    Downloaded 1090062 bytes in 291 http requests using 2 sockets.
	    Writing XML file: /data/xmltv.xml
	    Completed in 167s (Parse: 164s) 81 stations, 7895 programs, 17063 scheduled.
	    Last run time: Fri Mar 11 04:12:49 UTC 2022
	    Will run in 43200 seconds
	    ````

      3. Restart the container  
        ![docker-desktop-restart.png](../img/troubleshooting/docker/docker-desktop-restart.png){ width="75" } 
      4. If the container will not run, delete and recreate the Container per [Live TV Configuration](/server-apps/jellyfin/#live-tv-configuration) setup instructions

## If container is setup, running, and healthy:  
1. Open the file `/Users/Shared/xmltvdata/xmltv.xml` with a text editor (preferrably Atom or Visual Studio Code) and see if the file has up to date data.
      1. Find the start of the `<programme></programme>` block (around line 500), and see that it has data similar to
``` xml
<programme start="YYYYMMDD090000 +0000" stop="YYYYMMDD100000 +0000" channel="I2.1.21634.zap2it.com"> 
```
Note the `YYYMMDD` in `start=` and `stop=`, these should be todays date (or very close to it)

2. If the file does have up to date data but Jellyfin does not have updated data:
Open Jellyfin Admin Dashboard (web console) -> Live TV and ensure file is listed under `TV Guide Data Providers`  
![jellyfin-tv-guide-data-providers.png](../img/troubleshooting/jellyfin/jellyfin-tv-guide-data-providers.png){ width="500" }

3. If the file is listed:
Ensure that the Scheduled Task Live TV / Refresh Guide has run recently, and is scheduled to run every 12 hours  
![jellyfin-scheduled-task-refresh-guide.png](../img/troubleshooting/jellyfin/jellyfin-scheduled-task-refresh-guide.png){  width="500" }
![jellyfin-scheduled-task-refresh-guide-triggers.png](../img/troubleshooting/jellyfin/jellyfin-scheduled-task-refresh-guide-triggers.png){  width="500" }
