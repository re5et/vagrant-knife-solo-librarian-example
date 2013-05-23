Vagrant::Config.run do |config|

  config.vm.box_url = "http://files.vagrantup.com/precise64.box"
  config.ssh.forward_agent = true

  config.vm.define :my_box do |my_box_config|
    my_box_config.vm.network :hostonly, "192.168.2.2"
    my_box_config.vm.box = "my_box"
  end

end
