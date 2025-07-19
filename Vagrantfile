# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  
  # 1. 
  config.vm.box = "ubuntu/focal64"
  config.vm.box_check_update = false

  # 2. Cau hinh mang:
  config.vm.network "forwarded_port", guest: 80, host: 8080

  config.vm.network "forwarded_port", guest: 3000, host: 3000

  config.vm.network "forwarded_port", guest: 5000, host: 5000

  config.vm.boot_timeout = 300
  # 3. Cau hinh thu muc dong bo
  config.vm.synced_folder "./src", "/var/www/project"

  # 4. Cau hinh Provisioning
  config.vm.provision "shell", path: "scripts/bootstrap.sh"
  config.vm.provision "shell", path: "scripts/install-node.sh"
  config.vm.provision "shell", path: "scripts/install-docker.sh", privileged: true




end