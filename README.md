Uninstall the old version of VirtualBox:
```
sudo apt remove --purge --auto-remove virtualbox
```

Add the VirtualBox repository:
```
echo "deb [arch=amd64] http://download.virtualbox.org/virtualbox/debian $(lsb_release -sc) contrib" | sudo tee /etc/apt/sources.list.d/virtualbox.list
```

Add the repository key for VirtualBox:
```
sudo apt install gnupg2
wget -qO- https://www.virtualbox.org/download/oracle_vbox_2016.asc | sudo gpg --dearmor --yes -o /etc/apt/trusted.gpg.d/virtualbox.gpg
```

And finally, install version 7 of Virtualbox:
```
sudo apt update
sudo apt install virtualbox-7.0
```

Install Vagrant:
```
wget https://releases.hashicorp.com/vagrant/2.4.3/vagrant_2.4.3_linux_amd64.zip
unzip vagrant_2.4.3_linux_amd64.zip -d vagrant
mv ./vagrant/vagrant /bin/
```

Run Windows Machine:
```
make
```

Destroy Windows Machine:
```
make destroy
```

Finally add this lines to the ubuntu hosts (/etc/hosts) the IP added is the default gateway ip address created by virtualbox:
```
10.0.2.2 zuny.local voo.local hardware.local hey.local orange.local
10.0.2.2 docker-zuny.voo.be
```

In the browser if you want to access "https://localhost:9002/hac/" just change localhost with the IP "10.0.2.2" and you can access other services the default way (https://orange.local:9002/fr/pack-selector)
