# Jellyfin
!!! info
    Jellyfin is used to serve media content, manage and record live TV content, and more. 

## Installation
Download and install the latest version of the installer from [https://repo.jellyfin.org/releases/server/macos/stable/](https://repo.jellyfin.org/releases/server/macos/stable/)

## Configure Libraries
WIP

## Live TV Configuration
Ensure HDHomeRun has a static IP address:

1. Find HDHomeRun MAC address at [http://hdhomerun.local/system.html](http://hdhomerun.local/system.html)
2. In [modem settings](http://192.168.0.1/index.html) -> Advanced Setup -> DHCP Reservation:  
Enter (or choose) the MAC address and set a static IP (whatever IP was already set on the HDHR system menu web page)


### Setup Live TV according to Jellyfin documentation
[https://jellyfin.org/docs/general/server/live-tv/setup-guide.html](https://jellyfin.org/docs/general/server/live-tv/setup-guide.html)

### Add Guide Data:  
Install [Docker Desktop](https://www.docker.com/products/docker-desktop)  
Create a Docker container for the [Zap2XML Docker Container](https://github.com/shuaiscott/zap2xml)

1. Create a folder on the Mac: `/Users/Shared/xmltvdata`
2. Open Docker Desktop app
3. In Docker Desktop: Settings -> Resources -> File Sharing add the `/Users/Shared/xmltvdata` folder created in step 1
4. Run terminal command: replace `your_zap2it_email@email.com` and `your_zap2it_password` with your [https://tvlistings.zap2it.com/](https://tvlistings.zap2it.com/) account details. 

	````sh
	docker run "-d --name zap2xml -v /xmltvdata:/data -e USERNAME=your_zap2it_email@email.com -e PASSWORD=your_zap2it_password -e OPT_ARGS="-I -D -Z 55303" -e XMLTV_FILENAME=xmltv.xml shuaiscott/zap2xml"
	````

	By default, new guide data will be fetched by this Docker container every 12 hours. Additional command line arguments can be added/changed. See details on GitHub - shuaiscott/zap2xml README.

5. Open Docker Desktop and view logs, let it run. When complete, a status message will print like this:

	````
	Downloaded 1090062 bytes in 291 http requests using 2 sockets.
	Writing XML file: /data/xmltv.xml
	Completed in 167s (Parse: 164s) 81 stations, 7895 programs, 17063 scheduled.
	Last run time: Fri Mar 11 04:12:49 UTC 2022
	Will run in 43200 seconds
	````


6. In macOS Finder, verify that a xmltv.xml file was created at location `/Users/Shared/xmltvdata`. File should start with something like:
   
	```xml
	<?xml version="1.0" encoding="UTF-8"?>
	<!DOCTYPE tv SYSTEM "xmltv.dtd">

	<tv source-info-url="http://tvlistings.zap2it.com/" source-info-name="zap2it.com" generator-info-name="zap2xml" generator-info-url="zap2xml@gmail.com">
		<channel id="I2.1.21634.zap2it.com">
			<display-name>2.1 KTCADT</display-name>
			<display-name>2.1</display-name>
			<display-name>KTCADT</display-name>
			<icon src="https://zap2it.tmsimg.com/h3/NowShowing/21634/s32356_h3_aa.png" />
	```

	Scroll down past the `<channel></channel>` sections, and verify that there are `</programme></programme>` tags, with contents similar to

	```xml
	<programme start="20220311023000 +0000" stop="20220311040000 +0000" channel="I2.1.21634.zap2it.com">
			<title lang="en">Endeavour: The Evolution</title>
			<desc lang="en">A look at how …..</desc>
			<category lang="en">Documentary</category>
			<category lang="en">Special</category>
			<length units="minutes">90</length>
			<icon src="https://zap2it.tmsimg.com/assets/p21373423_b_v13_aa.jpg" />
			<url>https://tvlistings.zap2it.com//overview.html?programSeriesId=SH04161006&amp;tmsId=SH041610060000</url>
			<episode-num system="dd_progid">SH04161006.0000</episode-num>
			<previously-shown />
			<subtitles type="teletext" />
	</programme>
	```


7. Once the file looks correct, it can be added into Jellyfin. See details on [Setup Guide | Documentation - Jellyfin Project](https://jellyfin.org/docs/general/server/live-tv/setup-guide.html#adding-guide-data)
