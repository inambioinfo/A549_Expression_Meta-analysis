#!/bin/bash

# Install Python 2.7.13, pip & virtenv
# AbbyMoore 7.11.18
# SOURCE: https://gist.github.com/hrushikesh198/1baffbbf106191d37e07cab266405b7a
# Download software to project workspace (/helga/cluster/abem16); compile at .local on home dir

#Install Python
cd /helga/cluster/abem16
wget https://www.python.org/ftp/python/2.7.13/Python-2.7.13.tgz
tar -xzvf Python-2.7.13.tgz
cd Python-2.7.13
./configure 
make altinstall prefix=~/.local/
export PATH=~/.local/bin:$PATH

#Install pip
cd /helga/cluster/abem16
wget https://bootstrap.pypa.io/get-pip.py
python2.7 get-pip.py --user

#Setup virtenv
pip install virtualenv --user
cd /helga/cluster/abem16
mkdir venv
cd venv
virtualenv -p ~/.local/bin/python2.7  e1
virtualenv --relocatable e1
