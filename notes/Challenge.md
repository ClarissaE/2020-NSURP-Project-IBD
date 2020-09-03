        
# Experiment Challenge
## Samples
HSMA33S4
HSMA33R1
HSMA33R5

MSM6J2QP
MSM6J2QF
MSM6J2QH


## Code
`fastp --in1 ~/2020-NSURP/raw_data/HSMA33S4_R1.fastq.gz \
  --in2 ~/2020-NSURP/raw_data/HSMA33S4_R2.fastq.gz \
  --out1 HSMA33S4_1.trim.fastq.gz \
  --out2 HSMA33S4_2.trim.fastq.gz \
  --detect_adapter_for_pe \
  --qualified_quality_phred 4 \
  --length_required 31 --correction \
  --json HSMA33S4.trim.json \
  --html HSMA33S4.trim.html`


---

  
  `fastp --in1 ~/2020-NSURP/raw_data/MSM6J2QF_R1.fastq.gz \
  --in2 ~/2020-NSURP/raw_data/MSM6J2QF_R2.fastq.gz \
  --out1 MSM6J2QF_1.trim.fastq.gz \
  --out2 MSM6J2QF_2.trim.fastq.gz \
  --detect_adapter_for_pe \
  --qualified_quality_phred 4 \
  --length_required 31 --correction \
  --json MSM6J2QF.trim.json \
  --html MSM6J2QF.trim.html`
  
# Kmer
## Sample
HSMA33S4
HSMA33R1
HSMA33R5

MSM6J2QF
MSM6J2QH
MSM6J2QP

## Code
  `interleave-reads.py ~/2020-NSURP/trim/MSM6J2QH_1.trim.fastq.gz ~/2020-NSURP/trim/MSM6J2QH_2.trim.fastq.gz | \
        trim-low-abund.py --gzip -C 3 -Z 18 -M 20e9 -V - -o MSM6J2QH.kmertrim.fq.gz`


`unique-kmers.py ../trim/HSMA33S4_1.trim.fastq.gz ../trim/HSMA33S4_2.trim.fastq.gz
unique-kmers.py HSMA33S4.kmertrim.fq.gz`


## 8/29
Be in the sourmash folder
`sourmash compute -o MSM6J2QP.raw.sig --merge MSM6J2QP --scaled 2000 -k 21,31,51 --track-abundance ~/2020-NSURP/raw_data/MSM6J2QP_*fastq.gz`


for infile in ~/2020-NSURP/kmer-trim/*.kmertrim.fq.gz
do
    name=$(basename ${infile} .kmertrim.fq.gz)
    echo $name
    sourmash compute -k 21,31,51 --scaled 2000 --track-abundance --merge ${name} -o ${name}.kmertrim.sig ${infile}
done

## Gather
1. `sourmash gather --num-results 10 HSMA33S4.raw.sig ~/2020-NSURP/databases/genbank-k31.sbt.zip`
 
1. `sourmash gather --num-results 10 HSMA33R1.raw.sig ~/2020-NSURP/databases/genbank-k31.sbt.zip`
 
1. `sourmash gather --num-results 10 HSMA33R5.raw.sig ~/2020-NSURP/databases/genbank-k31.sbt.zip`
 
1. `sourmash gather --num-results 10 MSM6J2QF.raw.sig ~/2020-NSURP/databases/genbank-k31.sbt.zip`
 
1. `sourmash gather --num-results 10 MSM6J2QH.raw.sig ~/2020-NSURP/databases/genbank-k31.sbt.zip`
 
1. `sourmash gather --num-results 10 MSM6J2QP.raw.sig ~/2020-NSURP/databases/genbank-k31.sbt.zip`

## Results
![](https://i.imgur.com/UAVx49z.png)

![](https://i.imgur.com/xxArajR.png)

![](https://i.imgur.com/kD0VNsC.png)


---

**Original**
![](https://i.imgur.com/JC6c4zR.png)

### Heatmap
![](https://i.imgur.com/N4zhQDD.png)
### Gather Results
![](https://i.imgur.com/SEJoeDL.png)

![](https://i.imgur.com/g0kMZ8y.png)

![](https://i.imgur.com/KCW7B4v.png)

![](https://i.imgur.com/NiiTLL7.png)

![](https://i.imgur.com/3tW6gAC.png)

![](https://i.imgur.com/W56vNZj.png)

