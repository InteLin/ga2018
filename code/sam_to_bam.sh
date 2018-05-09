#!/bin/bash -l
#SBATCH -A g2018003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 02:00:00
#SBATCH -J sam_convert
#SBATCH --mail-type=ALL
#SBATCH --mail-user hampus.olin.7814@student.uu.se
# Load modules
module load bioinfo-tools
module load samtools/
# Your commands
samtools view -bS /home/haol7814/ga2018/analyses/04_dna_mapping/bwa_dna_map_SRR4342133.sam > /home/haol7814/ga2018/analyses/04_dna_mapping/SRR4342133.bam
samtools view -bS /home/haol7814/ga2018/analyses/04_dna_mapping/bwa_dna_map_SRR4342129.sam > /home/haol7814/ga2018/analyses/04_dna_mapping/SRR4342129.bam
