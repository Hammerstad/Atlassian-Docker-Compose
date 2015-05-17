Vagrant.configure("2") do |config|
  config.vm.box = "trusty"
  config.ssh.username = "vagrant"
  config.vm.box_url = "https://cloud-images.ubuntu.com/vagrant/trusty/current/trusty-server-cloudimg-amd64-vagrant-disk1.box "

  config.vm.network :forwarded_port, guest: 7990, host: 7990
  config.vm.network :forwarded_port, guest: 8070, host: 8070
  config.vm.network :forwarded_port, guest: 8095, host: 8095

  config.vm.provider :virtualbox do |vb|
   vb.customize ["modifyvm", :id, "--memory", 4096]
   vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
   vb.customize ["modifyvm", :id, "--natdnsproxy1", "on"]
  end

$dockerinstall = <<SCRIPT
echo Installing Docker...
sudo apt-get update
sudo wget -qO- https://get.docker.com/ | sh
echo Docker installed...
SCRIPT

  config.vm.provision :shell, :inline => $dockerinstall, :privileged => false
end