#!/bin/bash -l
#SBATCH -A g2018003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 02:00:00
#SBATCH -J map_RNA
#SBATCH --mail-type=ALL
#SBATCH --mail-user hampus.olin.7814@student.uu.se
# Load modules
module load bioinfo-tools
module load bwa/0.7.17
module load samtools/1.6
# Your commands
bwa mem -t 2 /home/haol7814/ga2018/analyses/05_binning/cat_bins/bin.10.cat.fa \
/home/haol7814/ga2018/analyses/09_RNA_quality/SRR4342137_trimmed.fastq.gz | samtools sort -O BAM -o /home/haol7814/ga2018/analyses/11_expression/bin.10.RNA.bam -

