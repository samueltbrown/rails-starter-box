Vagrant::Config.run do |config|
  config.vm.box       = 'centos64x64'
  config.vm.box_url   = 'http://developer.nrel.gov/downloads/vagrant-boxes/CentOS-6.4-x86_64-v20130427.box'
  config.vm.host_name = 'rails-starter-box'

  config.vm.forward_port 3000, 3000

  config.vm.provision :puppet,
    :manifests_path => 'puppet/manifests',
    :module_path    => 'puppet/modules'
end
