Vagrant.configure("2") do |config|
  config.vm.box = "generic/rocky9"

  #SERVIDOR
  config.vm.define "server" do |server|
    server.vm.hostname = "server.local"
    server.vm.network "private_network", ip: "192.168.50.10", virtualbox__intnet: "infra_net"
    
    server.vm.provision "ansible_local" do |ansible|
      ansible.playbook = "playbook.yml"
    end
  end

  # CLIENTE
  config.vm.define "client" do |client|
    client.vm.hostname = "client.local"
    client.vm.network "private_network", type: "dhcp", virtualbox__intnet: "infra_net"
  end
end