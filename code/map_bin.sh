#!/bin/bash -l
#SBATCH -A g2018003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 02:00:00
#SBATCH -J abundance_DNA
#SBATCH --mail-type=ALL
#SBATCH --mail-user hampus.olin.7814@student.uu.se
# Load modules
module load bioinfo-tools
module load bwa/0.7.17
module load samtools/1.6
# Your commands
bwa index /home/haol7814/ga2018/analyses/05_binning/cat_bins/bin.10.cat.fa
bwa mem -t 2 /home/haol7814/ga2018/analyses/05_binning/cat_bins/bin.10.cat.fa \
/home/haol7814/ga2018/data/trimmed_data/SRR4342129_1.paired.trimmed.fastq.gz \
/home/haol7814/ga2018/data/trimmed_data/SRR4342129_2.paired.trimmed.fastq.gz | samtools sort -O BAM -o /home/haol7814/ga2018/analyses/13_abundance/bin.10.bam -

