#!/bin/bash -l
#SBATCH -A g2018003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 03:00:00
#SBATCH -J func_anno
#SBATCH --mail-type=ALL
#SBATCH --mail-user hampus.olin.7814@student.uu.se
# Load modules
module load bioinfo-tools
module load prokka
# Your commands
cd /home/haol7814/ga2018/analyses/07_func_anno/prokka/bacteria
for bin in *.fa; do \
prokka --locustag $bin --prefix $bin --outdir ${bin}_out $bin; \
done

cd ..
cd archaea


for bin	in *.fa; do \
prokka --kingdom Archaea --locustag $bin --prefix $bin --outdir ${bin}_out $bin; \
done
