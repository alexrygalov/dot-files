# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|
  config.vm.box = "parallels/ubuntu-14.04"

  # Begin srv03
     config.vm.define "srv01" do |srv01|
     srv01.vm.hostname = "srv01"
     srv01.vm.box = "parallels/ubuntu-14.04"
     srv01.vm.synced_folder "code/", "/srv/www", create: true #, disabled: true
     #srv01.vm.network "forwarded_port", guest: 80, host: 8080
     #srv01.puppet_install.puppet_version = :latest
     #srv01.vm.provision "puppet" do |puppet|
     #  puppet.manifests_path = "manifests"
     #  puppet.manifest_file = "default.pp"
     #config.vm.provision "shell", path: "provision.sh"
     # config.vm.provision "chef_solo" do |chef|
     #chef.add_recipe "vagrant_la"
     #config.ssh.shell = "bash -c 'BASH_ENV=/etc/profile exec bash'"
     #config.vm.network "public_network", :bridge => 'en0: Wi-Fi'
     # Don't boot with headless mode
     # v.gui = true
     end
  # Begin srv02
     config.vm.define "srv02" do |srv02|
     srv02.vm.hostname = "srv02"
     srv02.vm.box = "parallels/ubuntu-14.04"
     #srv01.vm.synced_folder "code/", "/srv/www", create: true #, disabled: true
     srv02.vm.network "forwarded_port", guest: 80, host: 8080
     #srv01.puppet_install.puppet_version = :latest
     #srv01.vm.provision "puppet" do |puppet|
     #  puppet.manifests_path = "manifests"
     #  puppet.manifest_file = "default.pp"
     #config.vm.provision "shell", path: "provision.sh"
     # config.vm.provision "chef_solo" do |chef|
     #chef.add_recipe "vagrant_la"
     #config.ssh.shell = "bash -c 'BASH_ENV=/etc/profile exec bash'"
     #config.vm.network "public_network", :bridge => 'en0: Wi-Fi'
     # Don't boot with headless mode
     # v.gui = true
     end
   # Begin srv03
     config.vm.define "srv03" do |srv03|
     srv03.vm.hostname = "srv03"
     srv03.vm.box = "t03"
     #srv01.vm.synced_folder "code/", "/srv/www", create: true #, disabled: true
     srv03.vm.network "forwarded_port", guest: 80, host: 8080
     #srv01.puppet_install.puppet_version = :latest
     #srv01.vm.provision "puppet" do |puppet|
     #  puppet.manifests_path = "manifests"
     #  puppet.manifest_file = "default.pp"
     #config.vm.provision "shell", path: "provision.sh"
     # config.vm.provision "chef_solo" do |chef|
     #chef.add_recipe "vagrant_la"
     #config.ssh.shell = "bash -c 'BASH_ENV=/etc/profile exec bash'"
     #config.vm.network "public_network", :bridge => 'en0: Wi-Fi'
     # Don't boot with headless mode
     # v.gui = true
     end

   # Begin osx-sandbox
     config.vm.define "osxbox" do |osxbox|
     osxbox.vm.hostname = "osxbox"
     osxbox.vm.box = "parallels-osx-10.10"
     #srv01.vm.synced_folder "code/", "/srv/www", create: true #, disabled: true
     osxbox.vm.network "forwarded_port", guest: 80, host: 8080
     #srv01.puppet_install.puppet_version = :latest
     #srv01.vm.provision "puppet" do |puppet|
     #  puppet.manifests_path = "manifests"
     #  puppet.manifest_file = "default.pp"
     #config.vm.provision "shell", path: "provision.sh"
     # config.vm.provision "chef_solo" do |chef|
     #chef.add_recipe "vagrant_la"
     #config.ssh.shell = "bash -c 'BASH_ENV=/etc/profile exec bash'"
     #config.vm.network "public_network", :bridge => 'en0: Wi-Fi'
     # Don't boot with headless mode
     # v.gui = true
     end

end
