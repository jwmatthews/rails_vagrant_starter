# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.hostname = "railsapp.example.com"
  config.hostmanager.enabled = true
  config.hostmanager.manage_host = true
  config.hostmanager.ignore_private_ip = false
  config.hostmanager.include_offline = true

  config.vm.box = "centos_7.1"
  config.vm.box_url = "https://s3.amazonaws.com/jmatthews-vagrant/centos_7.1.box"
  config.vm.provision :shell, :path => "setup/setup.sh"

  config.vm.synced_folder ".", "/vagrant", type: "nfs"
  
  config.vm.provider :libvirt do |libvirt|
    libvirt.driver = "kvm"
    libvirt.memory = 2048
    libvirt.cpus = 2
  end
end
