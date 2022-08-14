# Network Change: Smart Home Devices
!!! info
    When the network is changed, some devices aren't smart enough to automatically reconnect to the new network. 

    To fix this, the devices need to be re-connected to the network.  

### Smart Plugs/Garage Door
1. Verify that accessories are offline. 
      - These devices should be blinking blue or red, and show offline in the Smart Life app
2. Press and hold the button till the device blinks quickly. Wait a few seconds after blinking quickly, then press and hold the button till it blinks slowly. (AP Mode) 
3. Follow the instructions in Smart Life app to add a new device.
4. Ensure that HomeBridge can control the newly added accessory. This may require removing cached accessories (three dots -> Homebridge Settings -> Remove All Cached Accessories)



### Cameras/Wyze Hub
1. Verify that cameras are offline. 
      - The cameras should be blinking blue and red, the hub should be quickly blinking blue, and show offline in the Wyze app

2. Follow instructions to add new camera/hub in Wyze app
3. The devices should respect their IP address reservations. Double check the IP of the device.
   
If there are connection issues, temporarily disable 5GHz through the eero app (Settings -> Troubleshooting -> My device won't connect)