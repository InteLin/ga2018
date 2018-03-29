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

| Step #| Analysis  | Software  | Time  | Comment   |
|:----:|-----------|-----------|-------|-----------|
| 1 | Metagenome assembly   | Megahit   | ~6h   | Use “--kmin-1pass” to reduce memory usage or it will crash in UPPMAX   |
| 2 | Binning of assembly   | Metabat   | < 30 min  | -   |
| 3 | Quality check of assembly and bins   | CheckM   | ~2h   | You have to install CheckM on your home directory (see Student Manual page 29)   |
| 4 | Functional annotation   | Prokka   | ~1h   | -   |
| 5 | Basic phylogenetic placement of bins (Taxonomic ID)   | PhyloPhlan   | ~6h   | You have to install Phylophlan in your home in UPPMAX (see Student manual page 31)   |
| 6 | Analyses of activity (expression level) of different bins   | ?   | ?   | -   |

#### Extra analyses: TBA

## Time frame


**Project start:** 2018-03-28

**Lab sessions**

Preliminary spacing of lab sessions tasks.

| Date | Step # | Assigmnent |
|-----|------------|
| 28/3  |   |Planning   |
| 29/3  |   |Planning & setup  |
| 10/4  | 1 | Metagenome assembly (step 1)  |
| 12/4  | 2 | Binning (step 2)  |
| 17/4  | 3 | Quality checking (step 3)  |
| 19/4  | 4 | Functional annotation (step 4)  |
| 25/4  |   | **Sanity check**  |
| 27/4  | 5 | Phylogenetics (step 5)  |
| 4/5  |   |   |
| 8/5  | 6  | Expression (step 6)  |
| 9/5  |    |   |
| 14/5  |    | Analyzing results  |
| 16/5  |    | Extra analyses  |
| 17/5  |    | Analyzing results  |

**Presentation of results:** 2018-05-24, 25

## Data
The data consists of roughly 9 GB of sequence data in fastq-format. This contains both the raw sequence data and trimmed data where the authors of the paper trimmed away

#### Organization of data
Some tree structure?

ga2018/

├─── analyses




└───
├───
