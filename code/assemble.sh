#!/bin/bash -l
#SBATCH -A g2018003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 08:00:00
#SBATCH -J genome_assembly
#SBATCH --mail-type=ALL
#SBATCH --mail-user hampus.olin.7814@student.uu.se
# Load modules
module load bioinfo-tools
module load megahit/1.1.2
# Your commands
megahit --kmin-1pass /home/haol7814/ga2018/data/trimmed_data/SRR4342129_1.paired.trimmed.fastq.gz /home/haol7814/ga2018/data/trimmed_data/SRR4342129_2.paired.trimmed.fastq.gz /home/haol7814/ga2018/data/trimmed_data/SRR4342133_1.paired.trimmed.fastq.gz  /home/haol7814/ga2018/data/trimmed_data/SRR4342133_2.paired.trimmed.fastq.gz -o /home/haol7814/ga2018/analyses/02_assembly/genome_assembly.asm

