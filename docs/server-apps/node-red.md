Node-RED
Node-RED is used to control automations that require more settings/control than HomeKit or HomeBridge can provide natively. 

“Node-RED is a programming tool for wiring together hardware devices, APIs and online services in new and interesting ways.

It provides a browser-based editor that makes it easy to wire together flows using the wide range of nodes in the palette that can be deployed to its runtime in a single-click.”

Installation:
Install Node-RED locally using directions provided here: https://nodered.org/docs/getting-started/local

Additional Palette items:
Once Node-RED is running and you can access via a web browser, install these additional items by clicking the three lines hamburger button in the top right, and selecting ‘Manage Palette’, then move to the ‘Install’ tab

node-red
node-red-contrib-cron
node-red-contrib-homebridge-automation
node-red-contrib-slack-files
node-red-contrib-stoptimer

Enabling Node-RED to start on computer boot
Follow directions here to use pm2 to have Node-RED start on boot: https://nodered.org/docs/faq/starting-node-red-on-boot

Importing Flows
Go to https://github.com/AndrewBreyen/Node-RED-flows/ and pick which flow you want to start importing
Copy the contents of desired flows’ (use the button for ease of use)
Click the three lines hamburger button in the top right, and selecting ‘Import’
Paste in value copied to clipboard
Go to https://api.slack.com/apps/A03JPNEBPC4/incoming-webhooks to retrieve the Webhook URL, copy to clipboard
Double click on the  node(s)
Paste in the Webhook URL copied to clipboard
Double click on the and nodes, ensure that the correct device and Homebridge Pin are selected
Repeat with the other flows you want to import
Test it out!
