# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "puppetlabs/centos-7.0-64-puppet"

  config.vm.define "client" do |client|
    client.vm.hostname = "client.localdomain"
    client.vm.network "forwarded_port", guest: 80, host: 8880, protocol: 'tcp'
    client.vm.provision "shell", path: "bootstrap/client.sh"
  end

  config.vm.define "server" do |server|
    server.vm.hostname = "server.localdomain"
    server.vm.network "forwarded_port", guest: 8140, host: 8140, protocol: 'tcp' 
    server.vm.provision "shell", path: "bootstrap/server.sh"
  end

end
