Vagrant.configure("2") do |config|
    config.vm.box = "ubuntu/trusty64"

    # Install Docker
    config.vm.provision "shell", inline: "curl -s https://get.docker.io/ubuntu/ | sudo sh"
end
