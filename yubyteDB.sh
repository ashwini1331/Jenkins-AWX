#!/bin/bash
sudo apt update -y
cd /tmp
wget https://www.python.org/ftp/python/3.7.2/Python-3.7.2.tar.xz
tar -xf Python-3.7.2.tar.xz
cd Python-3.7.2
./configure --enable-optimizations
make -j 1
sudo make altinstall
sudo apt install wget -y
sudo apt install curl -y
wget https://downloads.yugabyte.com/yugabyte-2.5.0.0-linux.tar.gz
tar xvfz yugabyte-2.5.0.0-linux.tar.gz && cd yugabyte-2.5.0.0/
./bin/post_install.sh
./bin/yugabyted start
./bin/yugabyted status
