# A549 Expression Meta-analysis


The main workspace for this project is `/helga/cluster/abem16/lung_project`.

Software was downloaded to `/helga/cluster/abem16/software`, and configured to `HOME` directory. 

Scripts prefixed with `tractor` and with a file extension of `.alf` are simply used to submit jobs to the job distribution center, Tractor. These files will not be detailed below.

#### Install tools directory
Includes scripts to install tools required for downloading NCBI SRA data and running the FastQC-MultiQC/Trimmomatic/RSEM/EBSeq pipeline.

`download_UCSC_browser_+genome` downloads the UCSC genome browser and hg38 genome. 

`install_QA_tools.sh` installs FastQC, MultiQC and Trimmomatic tools.

`install_align_express_tools.sh` installs RSEM/EBSeq, which is used for alignment, expression quantification and differential expression analysis.

`install_aspera.sh` installs aspera, which is needed for NCBI SRA downloads.

`install_gnu_parallel` installs gnu parallel to run multiple samples at once.

`install_python.sh` installs python 2.7.13 and pip; sets up virtual environment.

`install_r.sh` installs R, assuming no root access.

`install_sra_tools.sh` installs tools necessary to download NCBI SRA data.

#### Pre-analysis directory
Includes scripts to download NCBI SRA data and prepare genome reference.

`A549_UTR_SRA_Acc.txt` includes a list of NCBI SRA accession numbers for A549 untreated raw RNA-seq.

`get_A549_UTR.sh` downloads NCBI SRA raw RNA-seq reads.

`reference_prep.sh` creates reference genome (hg38) using RSEM.

