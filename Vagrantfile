Vagrant::Config.run do |config|

  ## SSH Configuration
  config.ssh.username = 'sajjad'
  config.ssh.private_key_path = '~/.ssh/id_rsa'

  # Global Configuration
  config.vm.provider :linode do |provider, override|
    override.vm.box = 'linode'
    override.vm.box_url = "https://github.com/displague/vagrant-linode/raw/master/box/linode.box"
    provider.token = 'API-KEY'

       #Linode Settings
        provider.distribution = 'Ubuntu 14.04 LTS'
        provider.datacenter = 'newark'
        provider.plan = '1024'
        provider.label = 'vagrant-ubuntu-lts'
  end

  config.vm.box = "precise32"
  
  config.vm.box_url = "http://files.vagrantup.com/precise32.box"

  config.vm.forward_port 3000, 3000

  config.vm.share_folder "app", "/home/vagrant/app", "app"

  # Uncomment the following line to allow for symlinks
  # in the app folder. This will not work on Windows, and will
  # not work with Vagrant providers other than VirtualBox
  # config.vm.customize ["setextradata", :id, "VBoxInternal2/SharedFoldersEnableSymlinksCreate/app", "1"]

  config.vm.provision :chef_solo do |chef|
    chef.add_recipe "nodejs"
    chef.add_recipe "mongodb-debs"
    # chef.add_recipe "redis-server"
    chef.json = {
      "nodejs" => {
        "version" => "0.10.29"
        # uncomment the following line to force
	# recent versions (> 0.8.5) to be built from
	# the source code
	# , "from_source" => true
      }
    }
  end

  config.vm.provision :shell, :inline => "sudo apt-get install -y build-essential --no-install-recommends"
  config.vm.provision :shell, :inline => "sudo apt-get install -y redis-server --no-install-recommends"
  config.vm.provision :shell, :inline => "sudo apt-get install -y ruby1.9.1-dev --no-install-recommends"
  config.vm.provision :shell, :inline => "sudo apt-get install -y ruby1.9.3 --no-install-recommends"
  config.vm.provision :shell, :inline => "sudo gem install cf"
end
