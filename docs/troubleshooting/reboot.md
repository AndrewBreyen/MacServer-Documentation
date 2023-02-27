# Reboot

!!! info
    Most issues can be solved by rebooting the Mac.
    
    If configured correctly, the mac should auto-login and all services should auto-start upon boot. 

To reboot the machine, there are a couple different ways:


### Apple Remote Desktop (ARD) 
1. Open ARD
2. Select ‘MacServer’ in the list
3. Choose Manage -> Restart
4. Select ‘Users lose unsaved changes’
5. Click Restart
6. After the Mac has restarted, ‘Current Status’ should change to ‘Available’.
7. Verify that the Mac has all services back up and running -- they should all start automatically after a reboot

### SSH
Use Terminal on a Mac, or “Termius” iOS app

1. Connect to MacServer over ssh:
    1. In a terminal: 
        ```sh
        ssh macmini@macserver.local
        ```

        You may recieve a message similar to
        ```
        The authenticity of host 'macserver.local (192.168.0.2)' can't be established.
        ED25519 key fingerprint is SHA256:f5c24jmfOO7dvFsdfsdf33SDFyzV1paytRg.
        This key is not known by any other names
        Are you sure you want to continue connecting (yes/no/[fingerprint])? 
        ```

        This is likely because you have not connected to MacServer using SSH previously, and your computer cannot verify the authenticity of the server computer.

        Verify the IP address is what you expect (in this example, `192.168.0.2`) and if it’s correct, type `yes` at the prompt. 

        After you have sone this once, you likely will not have ot do it again, unless the fingerprint key changes. 

    1. At prompt: `(macmini@macserver.local) Password:` enter MacMini user password (no characters will be shown when typed)
    2. Connection success if prompt changes to `macserver:~ macmini$`
   
2. Enter
   ``` sh
   sudo shutdown -r now
   ```
   at the prompt
3. Enter `macmini` user password
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
--
