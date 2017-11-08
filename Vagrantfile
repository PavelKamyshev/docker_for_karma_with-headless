Vagrant.configure("2") do |config|
	config.vm.box_check_update = false
		
	config.vm.define "master" do |master|
		master.vm.box = "ubuntu/xenial64"
		master.vm.network "public_network"
		master.vm.network "forwarded_port", guest: 8080, host: 8888
#		master.vm.hostname = "jenkinsmaster305"
		master.vm.provider "virtualbox" do |vb|
			vb.name = "ubuntu_jenkinsmaster_fordocker"
			vb.memory = "2048"
			vb.cpus = 2
			
		master.vm.provision "shell", path: "jenkins-master.sh", privileged: true
		end
	end
   
end