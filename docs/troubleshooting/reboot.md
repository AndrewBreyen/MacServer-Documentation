Reboot
Most issues can be solved by rebooting the Mac. If configured correctly, the mac should auto-login and all services should auto-start upon boot. 

To reboot the machine, there are a couple different ways:


Easiest - Apple Remote Desktop (ARD)
Open ARD 
Select ‘MacServer’ in the list
Choose Manage -> Restart
Select ‘Users lose unsaved changes’
Click Restart
After the Mac has restarted, ‘Current Status’ should change to ‘Available’

SSH

Use Terminal on a Mac, or “Termius” iOS app 
Connect to MacServer over ssh:
In a terminal: ssh macmini@macserver.local
At prompt: (macmini@macserver.local) Password: enter MacMini user password (no characters will be shown when typed)
Connection success if prompt changes to macserver:~ macmini$
Enter sudo shutdown -r now at prompt
Enter macmini user password
Final shutdown message will be shown:
Shutdown NOW!
                                                                               
*** FINAL System shutdown message from macmini@macserver.local ***           
System going down IMMEDIATELY                                                  
                                                                               
                                                                               

System shutdown time has arrived
Connection to macserver.local closed by remote host.
Connection to macserver.local closed.

