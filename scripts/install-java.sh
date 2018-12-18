#!/bin/sh
echo "Installing Java8"
echo "Step-1 ==> Installing Java 8"
echo "LANG=en_US.UTF-8" >> /etc/environment
echo "LANGUAGE=en_US.UTF-8" >> /etc/environment
echo "LC_ALL=en_US.UTF-8" >> /etc/environment
echo "LC_CTYPE=en_US.UTF-8" >> /etc/environment

add-apt-repository -y ppa:webupd8team/java
apt-get update
apt-get -y upgrade	

echo debconf shared/accepted-oracle-license-v1-1 select true | debconf-set-selections 
echo debconf shared/accepted-oracle-license-v1-1 seen true | debconf-set-selections

apt-get -y install oracle-java8-installer  
apt-get install oracle-java8-set-default
	
cat >> /etc/environment <<EOF 
		JAVA_HOME=/usr/lib/jvm/java-8-oracle
        JRE_HOME=/usr/lib/jvm/java-8-oracle/jre
        EOF