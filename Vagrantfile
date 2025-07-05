# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  
  # 1. 
  config.vm.box = "ubuntu/focal64"
  config.vm.box_check_update = false

  # 2. Cau hinh mang:
  config.vm.network "forwarded_port", guest: 80, host: 8080


  # 3. Cau hinh thu muc dong bo
  config.vm.synced_folder "./src", "/var/www/project"

end
