#!/bin/bash -l
#SBATCH -A g2018003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 08:00:00
#SBATCH -J phylo_placem
#SBATCH --mail-type=ALL
#SBATCH --mail-user hampus.olin.7814@student.uu.se
# Load modules
module load bioinfo-tools
module load python
module load biopython
module load FastTree
module load muscle
module load usearch/5.2.32
# Your commands
cd /home/haol7814/nsegata-phylophlan-1d174e34b2ae
./phylophlan.py -u ga_phylo
