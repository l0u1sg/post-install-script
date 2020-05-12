#! /bin/bash

echo "This script will be install ufw, cockpit, speedtest CLI, git and nano";
sleep 2;
echo "Let's get install speedtest CLI";
sleep 2;
apt-get install gnupg1 apt-transport-https dirmngr;
export INSTALL_KEY=379CE192D401AB61;
export DEB_DISTRO=$(lsb_release -sc);
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys $INSTALL_KEY;
echo "deb https://ookla.bintray.com/debian ${DEB_DISTRO} main" | sudo tee  /etc/apt/sources.list.d/speedtest.list;
apt-get update;
apt-get install speedtest;
echo "Let's get install cockpit";
sleep 2;
apt-get install cockpit;
echo "Let's get install ufw and configure 22 port"
apt-get install ufw;
ufw allow 22;
ufw enable;
ufw reload;
ufw status;
echo "Let's get install git"
sleep 2;
apt-get install git
echo "Installation complete"
sleep 2;
