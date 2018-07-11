#!/bin/bash

# AbbyMoore 7.11.18
# Install QA tools: Trimmomatic, FastQC, & MultiQC
# Requires pip

cd /helga/cluster/abem16/software

#Trimmomatic install
wget http://www.usadellab.org/cms/uploads/supplementary/Trimmomatic/Trimmomatic-0.38.zip --no-check-certificate
unzip Trimmomatic-0.38.zip


#FastQC install
wget https://www.bioinformatics.babraham.ac.uk/projects/fastqc/fastqc_v0.11.7.zip --no-check-certificate
unzip fastqc_v0.11.7.zip

#MultiQC
pip install multiqc
multiqc .
