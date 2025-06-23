Vagrant.configure("2") do |config|

  config.vm.boot_timeout = 600  # 10 minutos  
  # MASTER
  config.vm.define "master-1" do |master|
    master.vm.box = "ubuntu/jammy64"
    master.vm.hostname = "master-1"
    master.vm.network "private_network", ip: "192.168.56.10"

    master.ssh.insert_key = false
    master.ssh.private_key_path = ['~/.vagrant.d/insecure_private_key', '~/.ssh/id_rsa']
    master.vm.provision "file", source: "~/.ssh/id_rsa.pub", destination: "~/.ssh/authorized_keys"
    master.vm.provision "shell", path: "scripts/common.sh"
    master.vm.provision "shell", path: "scripts/master.sh"

    master.vm.provider "virtualbox" do |vb|
      vb.gui = false
      vb.cpus = 2
      vb.memory = "2048"
    end
  end

  # NODES
  (1..3).each do |i|
    config.vm.define "node-#{i}" do |node|
      node.vm.box = "ubuntu/jammy64"
      node.vm.hostname = "node-#{i}"
      node.vm.network "private_network", ip: "192.168.56.1#{i}"

      node.ssh.insert_key = false
      node.ssh.private_key_path = ['~/.vagrant.d/insecure_private_key', '~/.ssh/id_rsa']
      node.vm.provision "file", source: "~/.ssh/id_rsa.pub", destination: "~/.ssh/authorized_keys"
      node.vm.provision "shell", path: "scripts/common.sh"
      node.vm.provision "shell", path: "scripts/node.sh"

      node.vm.provider "virtualbox" do |vb|
        vb.gui = false
        vb.cpus = 1
        vb.memory = "2048"
      end
    end
  end
end
