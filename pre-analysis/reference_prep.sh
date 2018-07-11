#!/bin/bash

# AbbyMoore 7.11.18
# Prepare RSEM reference w/ Bowtie2 indices

/helga/cluster/abem16/software/RSEM-1.3.0/rsem-prepare-reference --gtf /helga/cluster/abem16/lung_project/ucsc_genome/hg38refGene.gtf \
                        --bowtie \
                        --bowtie-path /helga/cluster/abem16/software/bowtie-1.2.2-linux-x86_64 \
                        --bowtie2 \
                        --bowtie2-path /helga/cluster/abem16/software/bowtie2-2.3.4.1-linux-x86_64 \
                        /helga/cluster/abem16/lung_project/ucsc_genome/chroms \
                        /helga/cluster/abem16/lung_project/genome_ref/hg38
