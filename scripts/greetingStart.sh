#!/bin/bash

#install JAVA
sudo apt-get install -y openjdk-8-jre
sudo apt-get install -y openjdk-8-jdk
whereis java
export JAVA_HOME=/usr/bin/java
export PATH=$PATH:$JAVA_HOME

#Install and start Tomcat server

sudo mkdir /home/tomcat
cd /home/tomcat
sudo wget http://ftp.byfly.by/pub/apache.org/tomcat/tomcat-9/v9.0.22/bin/apache-tomcat-9.0.22.tar.gz
sudo tar -xf  apache-tomcat-9.0.22.tar.gz
sudo rm -vf  apache-tomcat-9.0.22.tar.gz
cd apache-tomcat-9.0.22
export CATALINA_HOME=$PWD
CATALINA_BASE=/home/web
sudo mkdir $CATALINA_BASE/
sudo mkdir $CATALINA_BASE/webapps
export CATALINA_BASE

#deploy app
cd  $CATALINA_HOME/webapps
git clone https://github.com/dennis00010011b/simpleweb

#prepaire server.xml

#prepair tomcat-users.xml


#start server
sudo $CATALINA_HOME./bin/catalina.sh start





