# Reboot
Most issues can be solved by rebooting the Mac. If configured correctly, the mac should auto-login and all services should auto-start upon boot. 

To reboot the machine, there are a couple different ways:


### Easiest - Apple Remote Desktop (ARD)
1. Open ARD
2. Select ‘MacServer’ in the list
3. Choose Manage -> Restart
4. Select ‘Users lose unsaved changes’
5. Click Restart
6. After the Mac has restarted, ‘Current Status’ should change to ‘Available’

### SSH
Use Terminal on a Mac, or “Termius” iOS app

1. Connect to MacServer over ssh:
    - In a terminal: `ssh macmini@macserver.local`
    - At prompt: `(macmini@macserver.local) Password:` enter MacMini user password (no characters will be shown when typed)
    - Connection success if prompt changes to `macserver:~ macmini$`
2. Enter `sudo shutdown -r now` at prompt
3. Enter macmini user password
4. Final shutdown message will be shown:  
```  
Shutdown NOW!
                                                                               
*** FINAL System shutdown message from macmini@macserver.local ***           
System going down IMMEDIATELY



System shutdown time has arrived
Connection to macserver.local closed by remote host.
Connection to macserver.local closed.
```  
5. Connection should be closed automatically, verify that MacServer comes back up.

