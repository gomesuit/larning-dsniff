# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = '2'

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = 'bento/ubuntu-16.04'
  config.ssh.forward_agent = true

  #config.vm.provider :virtualbox do |vb|
  #  vb.customize ['modifyvm', :id, '--memory', '2048']
  #end

  config.vm.define :server do |host|
    host.vm.hostname = 'server'
    host.vm.network :private_network, ip: '192.168.101.10'
    #host.vm.provision :shell, path: 'server.sh'
    #host.vm.provision :shell, path: 'provision.sh', privileged: false
    host.vm.provision :shell, path: 'provision.sh'
  end
end

