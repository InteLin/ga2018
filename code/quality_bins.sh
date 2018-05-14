#!/bin/bash -l
#SBATCH -A g2018003
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 02:00:00
#SBATCH -J quality_bins
#SBATCH --mail-type=ALL
#SBATCH --mail-user hampus.olin.7814@student.uu.se
# Load modules
module load bioinfo-tools
module load python
module load biopython
module load hmmer
module load prodigal
module load pplacer
# Your commands
checkm lineage_wf -t 4 -x fa --reduced_tree /home/haol7814/ga2018/analyses/05_binning/bins /home/haol7814/ga2018/analyses/06_qc_bins/
