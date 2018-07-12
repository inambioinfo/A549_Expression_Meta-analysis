#!/bin/bash

# AbbyMoore 7.11.18
# Get untreated A549 raw data from NCBI

# Pre-fetch SRA
/helga/cluster/abem16/bin/parallel -j 10 /helga/cluster/abem16/software/sratoolkit.2.9.1-ubuntu64/bin/prefetch {} ::: $(cat /helga/cluster/abem16/lung_project/scripts/pre-analysis/A549_UTR_SRA_Acc.txt)

# Download raw data that are available in SRA
/helga/cluster/abem16/bin/parallel -j 10 /helga/cluster/abem16/software/sratoolkit.2.9.1-ubuntu64/bin/fastq-dump --skip-technical -F --split-files -O /helga/cluster/abem16/lung_project/raw_data/A549_UTR {} ::: $(cat /helga/cluster/abem16/lung_project/pre-analysis/A549_UTR_SRA_Acc.txt)
