#!/bin/bash

# AbbyMoore 7.11.18
# Install alignment & expression tools: bowtie, bowtie2, RSEM/EBSeq
# Note: R must be pre-installed to get EBSeq

cd /helga/cluster/abem16/software

#Install bowtie
wget --no-check-certificate  https://sourceforge.net/projects/bowtie-bio/files/bowtie/1.2.2/bowtie-1.2.2-linux-x86_64.zip
unzip bowtie-1.2.2-linux-x86_64.zip

#Install bowtie2
wget --no-check-certificate  https://sourceforge.net/projects/bowtie-bio/files/bowtie2/2.3.4.1/bowtie2-2.3.4.1-linux-x86_64.zip
unzip bowtie2-2.3.4.1-linux-x86_64.zip

#Install RSEM/EBSeq
wget --no-check-certificate https://github.com/deweylab/RSEM/archive/v1.3.0.tar.gz 
cd RSEM-1.3.0
tar -xvzf  v1.3.0.tar.gz

#Make sure PATH is set
export LD_LIBRARY_PATH=~/packages/lib:$LD_LIBRARY_PATH

#Now, make
make -j 8
make ebseq
