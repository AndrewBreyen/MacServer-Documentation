# macOS Ventura Update: Issues and Solutions

!!! info
    macOS Ventura is Apple's latest macOS Operating System. 

    This page details issues encountered, and how to solve them 



## Scheduled Reboot

!!! quote " "
    In macOS Ventura, the way you schedule your Mac to shut down or reboot has changed.

    In previous versions of macOS, setting an automated schedule like this was easy. You simply had to navigate to the Energy Saver/Battery panel in System Preferences and set a custom schedule using the interface options. For ‌macOS Ventura‌, however, in replacing System Preferences with System Settings, Apple decided to remove these options from the graphical interface completely.

How to schedule a reboot on Monday at 4 AM:

1. Open Terminal
2. Run command:
```
sudo pmset repeat restart M 04:00:00
```
3. Enter password if requested
4. Verify schedule by running command:
```
pmset -g sched
```



Verify results: 
```
macmini@Andrews-MacServer ~ % pmset -g sched
Repeating power events:
  restart at 4:00AM Monday
```



To clear the current Power Management schedule, run command:
```
sudo pmset repeat cancel
```

Reference: [How to Schedule Shut Down, Restart, and Boot/Wake in macOS Ventura: MacRumors](https://www.macrumors.com/how-to/schedule-shut-down-boot-up-macos-ventura/)





## Virtualbox Aborted with Exit Code 1

Error Text:
````
Failed to open a session for the virtual machine PiHole.

The virtual machine 'PiHole' has terminated unexpectedly during startup with exit code 1 (0x1).

Result Code: NS_ERROR_FAILURE (0x80004005)
Component: MachineWrap
````

Solution 1: 
VirtualBox 7 was recently released (Oct 10, updated Oct 20), which is MUCH better than version 6

Download latest version from [https://www.virtualbox.org/wiki/Downloads](https://www.virtualbox.org/wiki/Downloads)

Use the uninstaller first, then install version 7. 

The PiHole VM may need to be re-added. Attempt to re-add. If issues persist, try solution 2. 


Solution 2: 

1. Open Terminal
2. Enter commands:
````
sudo su
csrutil clear
reboot
````
3. Verify if the issue persists by attempting to re-start the VM in headless mode. If it does not, stop troubleshooting. Otherwise, continue. 
4. Download the latest release from [https://www.virtualbox.org/wiki/Downloads](https://www.virtualbox.org/wiki/Downloads) and use `VirtualBox_Uninstall.tool` to un-install VirtualBox
5. Reboot
6. Re-install Virtualbox using the downloaded installer. 
7. If prompted, go to System Preferences - Privacy - General and accept the extensions
8. If the PiHole VM is no longer listed in VirtualBox, re-add PiHole Virtual Machine `PiHole.vbox` file using the 'Add' button in VirtualBox
8. Reboot

Reference: [Apple Stack Exchange](https://apple.stackexchange.com/q/408154)

## Full Disk Access/Privacy/Other Permissions

macOS Ventura seems to use a different scheme for Privacy, and some apps may not be updated for it. 

If required, remove permissions that are requested. 

If issues persist, uninstall and reinstall the app. 
