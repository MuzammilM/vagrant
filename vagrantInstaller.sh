apt-get install -y \
linux-image-extra-$(uname -r) \
linux-image-extra-virtual
apt-get install -y \
apt-transport-https \
ca-certificates \
curl \
software-properties-common
add-apt-repository -y \
"deb [arch=amd64] https://download.docker.com/linux/ubuntu \
$(lsb_release -cs) \
stable"
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
apt-get -y update
apt-get install -y docker-ce=17.12.0~ce-0~ubuntu
