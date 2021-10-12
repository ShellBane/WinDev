# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

	config.vm.define "windev" do |windev|
		windev.vm.box = "windev"
		windev.vm.network :forwarded_port, guest: 22, host: 4444, id: 'ssh'
		windev.vm.guest = :windows
		windev.vm.communicator = "winrm" 
		windev.winrm.password = "vagrant"
		windev.winrm.username = "administrator"
		windev.vm.synced_folder ".", "/vagrant"
		windev.vm.network :forwarded_port, guest: 3389, host: 3399, id: "rdp", auto_correct: true
		windev.vm.network :forwarded_port, guest: 5985, host: 5985, id: "winrm", auto_correct: true
		windev.vm.provider "virtualbox" do |v, override|
			v.customize ["modifyvm", :id, "--memory", 4096]
			v.customize ["modifyvm", :id, "--cpus", 2]
			v.customize ["modifyvm", :id, "--vram", 99]
			v.customize ["setextradata", "global", "GUI/SuppressMessages", "all" ]
		end
	end
end