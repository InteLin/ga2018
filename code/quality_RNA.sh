#!/bin/bash -l
#SBATCH -A g2018003
#SBATCH -p core
#SBATCH -n 1
#SBATCH -t 01:00:00
#SBATCH -J quality_RNA
#SBATCH --mail-type=ALL
#SBATCH --mail-user hampus.olin.7814@student.uu.se
# Load modules
module load bioinfo-tools
module load FastQC/0.11.5
# Your commands
cd /home/haol7814/ga2018/analyses/09_RNA_quality
fastqc /home/haol7814/ga2018/data/raw_data/SRR4342137.fastq.gz
fastqc /home/haol7814/ga2018/data/raw_data/SRR4342139.fastq.gz
