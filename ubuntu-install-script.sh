!#/bin/bash
# Install script

sudo apt update

# Install chrome
chrome.sh(){
	sudo apt-get install -y libxss1 libappindicator1 libindicator7;
	wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb;
	sudo dpkg -i google-chrome*.deb;
	google-chrome;
}

#Install Atom
atom.sh(){
	sudo add-apt-repository -y ppa:webupd8team/atom;
	sudo apt-get update;
	sudo apt-get install atom -y;
	atom;
}

#Install Git
sudo apt install -y git;

#Install Sublime Text
sublimetext.sh(){
	sudo add-apt-repository ppa:webupd8team/sublime-text-3;
	sudo apt-get update; 
	sudo apt-get install sublime-text-installer;
	subl;
}

#Install VSC
vscode.sh() {
	clear;
	curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg;
	sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg;
	sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list';
	sudo apt-get update;
	sudo apt-get install code;
}

#Install Slack
slack.sh(){
	wget https://downloads.slack-edge.com/linux_releases/slack-desktop-4.0.2-amd64.deb;
	sudo apt install ./slack-desktop-*.deb;
}