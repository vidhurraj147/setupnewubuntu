#!/bin/bash
echo 'MAKE SURE YOU ARE LOGGED IN AS ROOT USER'
sudo apt-get update -y
#supo apt-get install yum -y
sudo apt-get update && apt-get upgrade -y
echo '--------INSTALLING JAVA START---------------'
sudo apt-get install openjdk-8-jdk -y
echo '--------INSTALLING JAVA DONE ---------------'
echo '--------ADDING VARIABLES etc profile---------------'
sudo echo 'JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64' >> /etc/profile
sudo echo 'JRE_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre/' >> /etc/profile
sudo echo 'PATH=$PATH:$HOME/bin:$JAVA_HOME/bin:$JAVA_HOME/jre/bin' >> /etc/profile
sudo echo 'export JAVA_HOME' >> /etc/profile
sudo echo 'export JRE_HOME' >> /etc/profile
sudo echo 'export PATH' >> /etc/profile
echo '--------ADDING VARIABLES BASHRC---------------'
sudo echo 'JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64' >> ~/.bashrc
sudo echo 'JRE_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre/' >> ~/.bashrc
sudo echo 'PATH=$PATH:$HOME/bin:$JAVA_HOME/bin:$JAVA_HOME/jre/bin' >> ~/.bashrc
sudo echo 'export JAVA_HOME' >> ~/.bashrc
sudo echo 'export JRE_HOME' >> ~/.bashrc
sudo echo 'export PATH' >> ~/.bashrc

echo 'SCRIPT ABOUT TO APPLY NEW PATHS ABOUT TO EXIT LOGIN BACK'
exit
