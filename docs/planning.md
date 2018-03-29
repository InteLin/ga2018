# Paper 4 - Project planning

Author: Hampus Olin

## Project aim
The aim of the project is to gain knowledge about the different bacterial groups that inhabit zones with low dissolved oxygen, so called 'dead zones'. This includes assembling the metagenome, binning the assembly into the different species and several analysis steps to gain further knowledge into phylogenetics and metabolic properties of the present bacteria.

## Type of analyses
Analysis is split into basic and extra analyses. The basic analyses are mandatory while the extra analyses are to be made if time allows.
#### Basic analyses:
The main goal of these analyses is to produce an assembled metagenome that can be split into the different bacterial species. Both assembly and binning will be quality checked.
Assuming good quality of these will move the analysis into the functional annotation and the phylogenetic placement of the bins.
Lastly the activity of the different bins will be analysed.

The most time consuming step, looking at runtime, seems to be assembling the genome (step 1) and the phylogenetic placement of the bins (step 5). Runtime is not the only thing that consumes time though. Steps 3-6 seems to require more manual checking and interpreting of results, something that is hard to estimate the time required for. Using up several hours for interpreting each of these steps is certainly not unfeasible and has to be accounted for.

Since this project is based on an already published article the result of the steps will be compared to the results in the article when possible.

| Step #| Analysis  | Software  | Time  | Comment   |
|:-----:|-----------|-----------|-------|-----------|
| 1  | Reads quality control  | FastQC  | 15 min  | -  |
| 2 | Metagenome assembly   | Megahit   | ~6h   | Use “--kmin-1pass” to reduce memory usage or it will crash in UPPMAX   |
| 3 | Binning of assembly   | Metabat   | < 30 min  | -   |
| 4 | Quality check of assembly and bins   | CheckM (or Quast)   | ~2h (45 min)   | You have to install CheckM on your home directory (see Student Manual page 29)   |
| 5 | Functional annotation   | Prokka   | ~1h   | -   |
| 6 | Basic phylogenetic placement of bins (Taxonomic ID)   | PhyloPhlan   | ~6h   | You have to install Phylophlan in your home in UPPMAX (see Student manual page 31)   |
| 7  | RNA processing  |   |   | -  |
| 8  | Evaluation of RNA processing  |   |   | -  |
| 9  | Mapping RNA to DNA bins  | BWA  |   | -  |
| 10 | Analyses of activity (expression level) of different bins   | Deseq2 (R library)   |    | -   |

#### Extra analyses:
The list includes possible extra analyses. Marked ones are considered for extra anlysis.

- [x] Abundance of different organisms/ bins
- [ ] Refine taxonomic ID of assembled genomes
- [x] Metabolic pathway reconstructions for chosen bins
- [ ] Analysis of expression data of chose gene groups (i.e: respiratory genes, genes involved in carbohydrate metabolism, etc)
- [x] Comparisons across bins (pathways, expression certain genes groups, etc)
- [ ] Comparative genomics of bins
- [ ] Ortholog gene clustering of bins


## Time frame


**Project start:** 2018-03-28

**Lab sessions**

Preliminary spacing of lab sessions tasks.

| Date | Step # | Assigmnent |
|--------|---|------------|
| 03-28  |  |Planning   |
| 03-29  |  |Planning & setup  |
| 04-10  | 1, 2 | Quality control reads,  Start Metagenome assembly  |
| 04-12  | 3 | Binning  |
| 04-17  | 4 | Quality checking  |
| 04-19  | 5 | Functional annotation  |
| 04-25  |  | **Sanity check**  |
| 04-27  | 6 | Phylogenetics  |
| 05-4  | 7  | RNA processing  |
| 05-8  | 8, 9  | Evaluation of RNA, Mapping  |
| 05-9  | 10   | Expression  |
| 05-14  |    | Analyzing results  |
| 05-16  |    | Extra analyses  |
| 05-17  |    | Analyzing results  |

**Presentation of results:** 2018-05-24, 25

## Data
The data consists of roughly 9 GB of sequence data in fastq-format. This contains both the raw (RNA) sequence data and trimmed (DNA) data where the authors of the paper trimmed away adaptors and low quality reads. The DNA data used in this project is 4 out of the 6 samples analysed in the article. The DNA is already trimmed (removed adaptors and low quality data) while the RNA is raw and therefore needs a preprocessing step. Data is stored at UPPMAX (/proj/g2018003/nobackup/private/Thrash_2017/)

#### Organization of data
Some tree structure?

ga2018/

├─── analyses


└───
├───
