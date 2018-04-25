#!/bin/bash -l
#SBATCH -A g2018003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 07:00:00
#SBATCH -J mapping_DNA
#SBATCH --mail-type=ALL
#SBATCH --mail-user hampus.olin.7814@student.uu.se
# Load modules
module load bioinfo-tools
module load bwa/0.7.17
# Your commands
bwa index /home/haol7814/ga2018/analyses/02_assembly/final.contigs.fa
bwa mem -t 2 /home/haol7814/ga2018/analyses/02_assembly/final.contigs.fa /home/haol7814/ga2018/data/trimmed_data/SRR4342133_1.paired.trimmed.fastq.gz /home/haol7814/ga2018/data/trimmed_data/SRR4342133_2.paired.trimmed.fastq.gz > /home/haol7814/ga2018/analyses/04_dna_mapping/bwa_dna_map_SRR4342133.sam

