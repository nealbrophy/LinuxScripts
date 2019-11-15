!#/bin/bash
# Install script

sudo apt update

# Install chrome
sudo apt-get install -y libxss1 libappindicator1 libindicator7 &&
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb &&
sudo dpkg -i google-chrome*.deb

#Install Git
sudo apt install -y git

#Install VSC
clear
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg &&
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg &&
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list' &&
sudo apt-get update &&
sudo apt-get install code


#Install Slack
wget https://downloads.slack-edge.com/linux_releases/slack-desktop-4.0.2-amd64.deb &&
https://www.pling.com/p/1136805/startdownload?file_id=1530774600&file_name=ocs-url_3.1.0-0ubuntu1_amd64.deb&file_type=application/x-debian-package&file_size=54502 &&
sudo dpkg -i ocs-url*.deb
