# macOS Settings

System Settings -> General -> Sharing
![settings-general-sharing.png](../img/setup/macos-settings-sharing/settings-general-sharing.png){ width="200" }

Local hostname: `MacServer.local`

## Media Sharing
Enter Apple ID -- currently freezes




Ensure 'Computer Name' is set to `MacServer`
### File Sharing
Add folders: 

- /Users/Shared/macOS Server Shares/AllShare
- ​/Users/Shared/macOS Server Shares/Scans

Add volumes:

- /Volumes/Media
- /Volumes/Time Machine Backups

Enable Time Machine Backups:

- Right Click `Time Machine Backups` -> Advanced Options -> [CHECK] Share as a Time Machine backup destination  

![jellyfin-tv-guide-data-providers.png](../img/setup/time-machine-sharing-advanced-options.png){ width="200" }
![jellyfin-tv-guide-data-providers.png](../img/setup/time-machine-sharing-advanced-options-menu.png){ width="300" }

Permissions:

For all folders and volumes:

- ‘Everyone’: Read Only
- 'AllLocalUsers': Read & Write
  
### Remote Login
- [CHECK] Allow full disk access for remote users
- Allow access for: Only these users -> `AllLocalUsers`

### Remote Management
- Allow access for: `Only these users` -> click '+' and add all users.
- When prompted for permissions, enable everything.
- Computer Settings:
    - [CHECK] Always show Remote Management status in menu bar
    - [CHECK] Anyone may request permission to control screen

### Remote Apple Events
- Allow access for: `All users`

### Content Caching
- Cache: `All content`
- Options
    - Cache Location: `Macintosh HD`
    - Cache size: `30 GB` (change as needed)
