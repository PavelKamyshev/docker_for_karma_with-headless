#echo "=========================== Install ubuntu-desktop ==========================="	
#sudo apt-get update && sudo apt-get dist-upgrade -y
#sudo apt-get install -y ubuntu-desktop
echo "=========================== Install soft on jenkins-master ==========================="
apt-get update -y
apt-get install -y git
apt-get install -y curl
apt-get install -y nano
apt-get install -y htop
#apt-get install -y maven
apt-get remove docker docker-engine docker.io
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
apt-get update -y
apt-get install docker-ce -y
echo "=========================== Install jenkins-master ==========================="
wget -q -O - https://pkg.jenkins.io/debian/jenkins-ci.org.key | sudo apt-key add -
sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
apt-get update && apt-get install -y jenkins
usermod -aG docker jenkins
usermod -aG docker ubuntu