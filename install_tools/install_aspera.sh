#!/bin/bash

# AbbyMoore 7.11.18
# Install Aspera for NCBI GEO SRA downloads

cd /helga/cluster/abem16/software

wget https://download.asperasoft.com/download/sw/connect/3.8.0/ibm-aspera-connect-3.8.0.158555-linux-g2.12-64.tar.gz
tar -xvzf ibm-aspera-connect-3.8.0.158555-linux-g2.12-64.tar.gz

./ibm-aspera-connect-3.8.0.158555-linux-g2.12-64.sh 


