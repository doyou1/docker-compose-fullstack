Complete installation instructions have since been uploaded here by Nodesource. It is copied below for your reference. Instructions are the same for updating to the latest version.

If you don't like curl ... | sudo bash - then you can follow the manual instructions, which tells you how to add the Node.js repository to /etc/apt/sources.list.d/ yourself.

NOTE: If you are using Ubuntu Precise or Debian Wheezy, you might want to read about running Node.js >= 6.x on older distros

Node.js Current:
# Using Ubuntu
curl -fsSL https://deb.nodesource.com/setup_current.x | sudo -E bash -
sudo apt-get install -y nodejs

Node.js v14.x:
# Using Ubuntu
curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
sudo apt-get install -y nodejs