ENV['VAGRANT_DEFAULT_PROVIDER'] = 'libvirt'
ENV['VAGRANT_REPROMAN_SRC'] = '/home/austin/dart/reproman'
Vagrant.configure("2") do |config|
  # config.vm.box = "fedora/37-cloud-base"
  # config.vm.box = "generic/ubuntu1804"
  # config.vm.box = "generic/ubuntu2004"
  config.vm.box = "generic/ubuntu2204"
  config.vm.synced_folder ENV["VAGRANT_REPROMAN_SRC"], "/home/vagrant/reproman", type: "nfs", nfs_udp: false
  config.vm.provision "file", source: "bashrc", destination: "/home/vagrant/.bashrc"
  config.vm.provision "file", source: "vimrc", destination: "/home/vagrant/.vimrc"
  config.vm.provision "ansible" do |ansible|
    ansible.verbose = "v"
    ansible.playbook = "playbook.yml"
    # ansible.extra_vars = { ansible_python_interpreter:"/usr/bin/python3" }
  end
end
