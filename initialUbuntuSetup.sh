#!/bin/bash
echo 'MAKE SURE YOU ARE LOGGED IN AS ROOT USER'
sudo apt-get update -y
#supo apt-get install yum -y
sudo apt-get update && apt-get upgrade -y
sudo apt -get install openjdk-8-jdk -y
sudo echo 'JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64' >> /etc/profile
sudo echo 'JRE_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre/' >> /etc/profile
sudo echo 'PATH=$PATH:$HOME/bin:$JAVA_HOME/bin:$JAVA_HOME/jre/bin' >> /etc/profile
sudo echo 'export JAVA_HOME' >> /etc/profile
sudo echo 'export JRE_HOME' >> /etc/profile
sudo echo 'export PATH' >> /etc/profile
echo 'SCRIPT ABOUT TO APPLY NEW PATHS ABOUT TO EXIT LOGIN BACK'
exit
