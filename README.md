# Install Virtualbox

Before installation, update the package repository with:\
`sudo apt update`

Next, download and install VirtualBox by running:\
`sudo apt install virtualbox`

Install the VirtualBox Extension Pack by running:\
`sudo apt install virtualbox-ext-pack`

Read the VirtualBox Extension Pack Personal Use and Evaluation License (PUEL) and select <Ok> to confirm:\
![Evaluation License](https://phoenixnap.com/kb/wp-content/uploads/2024/03/vbox-extension-pack-license.png)

Accept the VirtualBox PUEL license terms by selecting <Yes> and hitting Enter:\
![PUEL license terms](https://phoenixnap.com/kb/wp-content/uploads/2024/03/agree-to-vbox-extension-pack-license-terms-1.png)

Once the installation is completed, VirtualBox is ready to run. Start it by executing:\
`virtualbox`

# Download the Windows 10 ISO

Go to the [Windows 10 ISO](https://www.microsoft.com/en-us/software-download/windows10ISO)

Scroll down and select the Windows 10 Multi Edition ISO:\
![Windows 10 Multi Edition ISO](https://i.ibb.co/RccM6Zv/Screenshot-from-2024-07-18-11-12-16.png)

Then select language you want:\
![Windows 10 language](https://i.ibb.co/nCz5qZ4/Screenshot-from-2024-07-18-11-16-13.png)

Finally select the 64-bit download:\
![Windows 10 download](https://i.ibb.co/dmF5xfg/Screenshot-from-2024-07-18-11-18-49.png)

# Create a new virtual machine

First click on the New button:\
![Virtualbox New](https://i.ibb.co/1rwmq6j/virtualbox-new.png)

Next enter the options below and click Next:\
![Virtualbox New Options](https://i.ibb.co/P4ZcWrZ/Screenshot-from-2024-07-18-11-28-27.png)

Next enter the RAM size and click Next:\
![Virtualbox RAM](https://i.ibb.co/Bw6kGQ9/Screenshot-from-2024-07-18-11-29-48.png)

Next select "Create a virtual hard disk now" and click Create:\
![Virtualbox Hard Disk](https://i.ibb.co/XJrPz24/Screenshot-from-2024-07-18-11-31-20.png)

Next select VDI and click Next:\
![Virtualbox File Type](https://i.ibb.co/n1G1NNh/Screenshot-from-2024-07-18-11-32-49.png)

Choose "Dynamically allocated" and click Next:\
![Virtualbox Storage](https://i.ibb.co/KGM3bVx/Screenshot-from-2024-07-18-11-33-52.png)

Set the size of the storage and click Create:\
![Virtualbox Storage Size](https://i.ibb.co/Gp0Dw5d/Screenshot-from-2024-07-18-11-35-45.png)

# Configure the created virtual machine

Click on the "Windows 10" machine on the left and then click "Settings":\
![Virtualbox Settings](https://i.ibb.co/z8Yzvhy/virtualbox-settings.png)

Click on "General" in the left then click on the "Advanced" tab, select "Bidirectional" for both "Shared Clipboard" and "Drag'n'Drop" options:\
![Virtualbox Settings General](https://i.ibb.co/m60xX10/virtualbox-settings-general.png)

Click on "Storage" in the left then the "Empty" disk and in the "Optical Drive" click on the disk icon then click on "Choose a disk file" then choose the Windows 10 ISO file you downloaded earlier then click on the "OK" button at the bottom:\
![Virtualbox Settings Storage](https://i.ibb.co/Lr037c0/virtualbox-settings-storage.png)

Now click on the "Start" button to start the virtual machine and just follow the steps to install Windows 10 (you can find many tutorials on the web to how install Windows 10):\
![Virtualbox Start](https://i.ibb.co/f4hPCxX/virtualbox-start.png)

# Install the guest additions CD

When you finish installing Windows 10 and start it click on "Devices" options at the top then click "Insert Guest Additions CD image":\
![Windows Guest CD](https://i.ibb.co/S3X0kcn/windows-guest-cd.png)

On Windows machine go to "File Explorer" then "This PC" click on the CD Drive:\
![Windows Guest CD](https://i.ibb.co/RjN4d3j/windows-guest-cd-additions.png)

Double click on the "VBoxWindowsAdditions" and just follow the installation steps then reboot the virtual machine:\
![Windows Guest CD Install](https://i.ibb.co/17w90xb/windows-guest-cd-additions-install.png)

Finally add this lines to the ubuntu hosts (/etc/hosts):\
```
10.0.2.2 zuny.local voo.local hardware.local hey.local orange.local
10.0.2.2 docker-zuny.voo.be
```

If you want to access "https://localhost:9002/hac/" just change localhost with the IP "10.0.2.2"
