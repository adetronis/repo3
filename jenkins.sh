#!/bin/bash

#Description: Jenkins installation scripting
#Author: Tayo Oni
#Date: February 2022                                                                                       

echo
echo "Jenkins installation begins with java framework intgration as show below"
echo
sleep 2                                                                                                    sudo yum install java-1.8.0-openjdk-devel -y
echo
sleep 2
sudo yum install wget -y
echo
sleep 2
sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat/jenkins.repo
echo
sleep 2
sudo sed -i 's/gpgcheck=1/gpgcheck=0/g' /etc/yum.repos.d/jenkins.repo
echo
sleep 2
sudo yum install jenkins  -y
echo
sleep 2
sudo systemctl start jenkins
echo
Sudo systemctl enable jenkins
echo
sudo systemctl status jenkins
echo
echo "The installation ended successfully"
