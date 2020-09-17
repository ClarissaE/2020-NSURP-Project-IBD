# 2020-NSURP-Project-IBD
## Experiment Goals
* Analyse metagenomic data using sourmash software
* Compare 3 samples from each of 2 patients. 
    * 3 samples were taken from a patient with Crohn's disease and 3 samples were taken from a healthy patient. 
    * Files that were downloaded:
        * Patient w/ IBD
            * CSM7KOJE.tar  
CSM7KOJO.tar  
CSM7KOJG.tar
        * No IBD
            * HSM5MD5D.tar
HSM5MD5B.tar  
HSM6XRSX.tar
## Background
*The data used for this experiment is from **The Integrative Human Microbiome Project***
Link: https://www.nature.com/articles/s41586-019-1238-8
### Inflammatory Bowel Disease (IBD)
* IBD is chronic inflammation of the gastrointestinal tract.
* IBD is the general term for Crohn's disease and Ulcerative Colitis.
* Symptons common to IBD are rectal bleeding, abdominal pain, persisten diarrhea and fatigue.
* A defective immune system can lead to IBD but the exact cause is unknown.

### Samples
* Stool samples were collected from patients with IBD and sequenced then stored in fastq files.
* The sequenced samples were matched to a reference database with known sequences to identify the possible microbes.
* Kmers were used to determine how similar the sequences being compared. The more Kmers in common mean more similarity and more likely that the organisms are similar.

## Software

### Sourmash
* Software used to create kmer signatures which represent sequences in a compressed way.
* The signatures can be compared between samples as well as from a reference database.
* More info about Sourmash: https://angus.readthedocs.io/en/2019/sourmash.html
### Sourmash Gather
* Used to estimate the taxonomic composition of known sequences in a metagenome
* GenBank was data base was used
    * it is a public database that contains numerous DNA sequences
    * Link to GenBank: https://www.ncbi.nlm.nih.gov/genbank/

## Examples
### Quality Assessment Example
FastQC Files were created for each sample in order to view the quality of the samples.
These two images are some of the data that is reported about the samples.
![](https://i.imgur.com/WNcmnJ0.png)
![](https://i.imgur.com/lxjxQkD.png)

### **Sourmash Gather Example** 
Sourmash Gather is useful to give some hints as to what microbes may be present in each sample.

CSM7KOJE Raw Sample
`sourmash gather --num-results 10 CSM7KOJE.raw.sig ~/2020-NSURP/databases/genbank-k31.sbt.zip`
![](https://i.imgur.com/XxKlXtl.png)

CSM7KOJE Kmer Trimmed Sample
`sourmash gather --num-results 10 CSM7KOJE.trim.sig ~/2020-NSURP/databases/genbank-k31.sbt.zip`
![](https://i.imgur.com/WX9a0wU.png)

* query would be the signature of the sample being compared to the database (CSM7KOJE)
* The p in p_query and p_match is percent
* p_query is how much of the sample is from the organism named
* p_match is how much of the matched data is found in the query
* Recovered matches refers to the percent of matches found between the data and query


## **Comparison Table**
This table compares the number 1 result from each of the sourmash gather results from each sample and is compared using untrimmed data (Reg) and kmer trimmed data (trim)

Kmer Trimmed data is better to use because any unnecessary kmers will be cut and any errors from the untrimmed data will be gone.


**Microbe Names
(KP = Klebsiella pneumoniae)
(CC = Clostridium Clostridioform)
(BaO = Bacteroides Ovatus)**
### Crohn's Disease Samples
| *CSM7KOJE*        | Reg  | Trim | *CSM7KOJG*        | Reg  | Trim | *CSM7KOJO*        | Reg  | Trim  |
| ----------------- | ---- | ---- | ----------------- | ---- | ---- | ----------------- | ---- | ----- |
| **Overlap (Mbp)** | 6.4  | 6.4  | **Overlap (Mbp)** | 6.4  | 6.4  | **Overlap (Mbp)** | 6.4  | 6.4   |
| **% Query**       | 9.5  | 9.6  | **% Query**       | 13.4 | 13.5 | **% Query**       | 9.5  | 42.3  |
| **% Match**       | 63.6 | 63.6 | **% Match**       | 63.9 | 63.8 | **% Match**       | 63.6 | 90.5  |
| **Avg. Abund**    | 17.4 | 17.1 | **Avg. Abund**    | 39.8 | 39.4 | **Avg. Abund**    | 17.4 | 113.0 |
| **Name**          | KP   | KP   | **Name**          | KP   | KP   | **Name**          | CC   | CC    |

### Healthy Samples 
| *HSM5MD5D*        | Reg  | Trim | *HSM5MD5B*        | Reg  | Trim | *HSM6XRSX*        | Reg  | Trim |
| ----------------- | ---- | ---- | ----------------- | ---- | ---- | ----------------- | ---- | ---- |
| **Overlap (Mbp)** | 5.8  | 5.8  | **Overlap (Mbp)** | 5.3  | 5.3  | **Overlap (Mbp)** | 5.7  | 5.7  |
| **% query**       | 2.4  | 2.4  | **% query**       | 1.5  | 1.5  | **% query**       | 2.5  | 2.5  |
| **% match**       | 75.8 | 75.8 | **% match**       | 68.4 | 68.4 | **% match**       | 74.3 | 74.2 |
| **Avg. Abund**    | 5.4  | 5.4  | **Avg. Abund**    | 5.6  | 5.6  | **Avg. Abund**    | 6.0  | 5.9  |
| **Name**          | BaO  | BaO  | **Name**          | BaO  | BaO  | **Name**          | BaO  | BaO  |

## Visualization
Software was used to create visuals for the data.
1. Heatmap ![](https://i.imgur.com/oUt5h1g.png)

This heatmap is used to visualize the similarity between the samples. The heatmap was created using sourmash to compare the samples and plot the data. 

2. Plot 
![](https://i.imgur.com/JC6c4zR.png)
This MDS plot was created using an R script and the more clustered samples have more in common than those far apart.

## Summary

### What was Done
1. Got access to FARM High Performance Compute (HPC) cluster
1. Set up conda environment management
1. Installed Sourmash software, fastp, fastqc, khmer, R & Rscript
1. Downloaded & decompressed open source metagenomic sequence data from the integrated Human Microbiome Project (iHMP)
1. Assessed quality of data with fastqc software, & transferred report files from remote cluster
1. Quality trimmed data with fastp software
1. Kmer trimmed data with khmer software
1. Generate kmer signatures with Sourmash Compute
1. Used Sourmash Gather to compare each sample to the GenBank Database
1. Used Sourmash Compare to compare samples to eachother
1. Used Sourmash Plot to generate a heatmap and histogram to convey kmer similarity among sample
1. Use Rscript in R to generate an MDS plot to convey relatedness among sample
1. Drew conclusion that samples from one patient are more similar to eachother than they are to samples from another patient
1. Next steps: add more patients, and develop and automated workflow for this analysis
### Conclusion

The Sourmash Software was useful in identifying the microbes in each sample as well as comparing the samples to each other and a database. The microbes in the samples from the patient with Crohn's disease seem to be more similar. It is not enough data to say that the samples are different based on disease. The differences could be due to the samples being from different people. Since only 2 patients were utilized in this experiment, it would be more helpful to compare more patients.
