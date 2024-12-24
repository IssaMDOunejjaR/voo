Vagrant.configure("2") do |config|
  config.vm.box = "gusztavvargadr/windows-10"
  config.vm.box_version = "2202.0.2409"
  config.vm.network "private_network", ip: "192.168.56.2"
  config.vm.boot_timeout = 600000
  config.vm.communicator = "winrm"
  config.winrm.port = 55985
  config.vm.provision "shell", privileged: false, path: "./setup.ps1"

  config.vm.provider "virtualbox" do |v|
    v.gui = true
    v.cpus = 4
    v.memory = 8193
    v.name = "voo"

    v.customize ['modifyvm', :id, '--clipboard', 'bidirectional']
    v.customize ['modifyvm', :id, '--draganddrop', 'bidirectional']
  end
end
