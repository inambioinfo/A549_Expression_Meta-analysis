#!/bin/bash

# AbbyMoore 7.11.18
# Get untreated A549 raw data from NCBI

# Pre-fetch SRA
/helga/cluster/abem16/bin/parallel -j 10 /helga/cluster/abem16/software/sratoolkit.2.9.1-ubuntu64/bin/prefetch {} ::: $(cat /helga/cluster/abem16/lung_project/raw_data/A549_UTR/last_ones)

# Download raw data that are available in SRA
/helga/cluster/abem16/bin/parallel -j 10 /helga/cluster/abem16/software/sratoolkit.2.9.1-ubuntu64/bin/fastq-dump --skip-technical -F --split-files -O /helga/cluster/abem16/lung_project/raw_data/A549_UTR {} ::: $(cat /helga/cluster/abem16/lung_project/helga/cluster/abem16/raw_data/A549_UTR/last_ones)

# Download raw data that are provided as supplementary file
#cd /helga/cluster/abem16/lung_project/raw_data/A549_UTR
#wget  ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2877nnn/GSM2877156/suppl/GSM2877156_P7652_273.tsv.gz
#wget  ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2877nnn/GSM2877158/suppl/GSM2877158_P7652_281.tsv.gz
#wget  ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2877nnn/GSM2877160/suppl/GSM2877160_P7652_289.tsv.gz
#wget  ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2888nnn/GSM2888370/suppl/GSM2888370_Uninfected.h5
#wget  https://www.ncbi.nlm.nih.gov/geo/download/?acc=GSE91305&format=file
#wget  ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2759nnn/GSM2759912/suppl/GSM2759912_S-A14.genome.sorted.bedgraph.gz
#wget   https://www.ncbi.nlm.nih.gov/geo/download/?acc=GSE86657&format=file
