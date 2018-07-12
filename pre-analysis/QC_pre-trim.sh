#!/bin/bash

# AbbyMoore 7.12.18
# Run FastQC on untrimmed reads and aggregate results with MultiQC

find /helga/cluster/abem16/lung_project/raw_data/A549_UTR -name "*.fastq" | xargs -P 10 -n 1 /helga/cluster/abem16/software/FastQC/fastqc
