#!/bin/bash
#sudo apt-get update && sudo apt-get upgrade -y
#sudo apt -y install git
#sudo apt -y install default-jdk
#sudo apt-get update
#for pkg in docker.io docker-doc docker-compose podman-docker containerd runc; do sudo apt-get remove $pkg; done

#sudo apt-get update
#sudo apt-get install ca-certificates curl
#sudo install -m 0755 -d /etc/apt/keyrings
#sudo curl -fsSL https://download.docker.com/linux/debian/gpg -o /etc/apt/keyrings/docker.asc
#sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources:
#echo \
  #"deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/debian \
 # $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  #sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
#sudo apt-get update
#sudo apt-get -y install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
#curl -L "https://github.com/docker/compose/releases/download/v2.18.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
#chmod +x /usr/local/bin/docker-compose
#echo "${privateKey}" | sudo tee -a /home/zfreyjaz/.ssh/authorized_keys >/dev/null
