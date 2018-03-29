# Paper 4 - Project planning

Author: Hampus Olin

## Project aim
The aim of the project is to gain knowledge about the different bacterial groups taht inhabit zones with low dissolved oxygen, so called 'dead zones'. This includes assembling the metagenome, binning the assembly into the different species and several analysis steps to gain further knowledge into phylogenetics and metabolic properties of the present bacteria.

## Type of analyses
Analysis is split into basic and extra analyses. The basic analyses are mandatory while the extra analyses are to be made if time allows.
#### Basic analyses:
The main goal of these analyses is to produce an assembled metagenome that can be split into the different bacterial species. Both assembly and binning will be quality checked.
Assuming good quality of these will move the analysis into the functional annotation and the phylogenetic placement of the bins.
Lastly the activity of the different bins will be analysed.

The most time consuming step, looking at runtime, seems to be assembling the genome (step 1) and the phylogenetic placement of the bins (step 5). Runtime is not the only thing that consumes time though. Steps 3-6 seems to require more manual checking and interpreting of results, something that is hard to estimate the time required for. Using up several hours for interpreting each of these steps is certainly not unfeasible and has to be accounted for.

|Step #| Analysis  | Software  | Time  | Comment   |
|:----:|-----------|-----------|-------|-----------|
|1 |Metagenome assembly   |Megahit   |~6h (2 cores)   |-   |
|2 |Binning of assembly   |Metabat   |< 30 min (2 cores)  |-   |
|3 |Quality check of assembly and bins   |CheckM   |~2h (2 cores)   |-   |
|4 |Functional annotation   |Prokka   |~1h (2 cores)   |-   |
|5 |Basic phylogenetic placement of bins (Taxonomic ID)   |PhyloPhlan   |~6h (2 cores)   |-   |
|6 |Analyses of activity (expression level) of different bins   |?   |?   |-   |

#### Extra analyses: TBA

## Time frame
Some checkpoints? Time for analyzing the results?

**Project start:** 2018-03-28

**Presentation of results:** 2018-05-24, 25

## Data
What data? What type of data?
Raw and trimmed files...

#### Organization of data
Some tree structure?
