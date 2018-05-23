#!/bin/bash -l
#SBATCH -A g2018003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 01:00:00
#SBATCH -J RNA_trim
#SBATCH --mail-type=ALL
#SBATCH --mail-user hampus.olin.7814@student.uu.se
# Load modules
module load bioinfo-tools
module load trimmomatic/0.36
# Your commands
java -jar /sw/apps/bioinfo/trimmomatic/0.36/rackham/trimmomatic-0.36.jar SE -phred33 /home/haol7814/ga2018/data/raw_data/SRR4342137.fastq.gz /home/haol7814/ga2018/analyses/09_RNA_quality/SRR4342137_trimmed.fastq.gz ILLUMINACLIP:TruSeq3-SE:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
java -jar /sw/apps/bioinfo/trimmomatic/0.36/rackham/trimmomatic-0.36.jar SE -phred33 /home/haol7814/ga2018/data/raw_data/SRR4342139.fastq.gz /home/haol7814/ga2018/analyses/09_RNA_quality/SRR4342139_trimmed.fastq.gz ILLUMINACLIP:TruSeq3-SE:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
