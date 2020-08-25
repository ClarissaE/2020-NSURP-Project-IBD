# Taxonomic Discovery with Sourmash

## **Sourmash Signatures**

### CSM7KOJE
* `sourmash compute -o CSM7KOJE.raw.sig --merge CSM7KOJE --scaled 2000 -k 21,31,51 --track-abundance ~/2020-NSURP/raw_data/CSM7KOJE_*fastq.gz`

### CSM7KOJG
* `sourmash compute -o CSM7KOJG.raw.sig --merge CSM7KOJG --scaled 2000 -k 21,31,51 --track-abundance ~/2020-NSURP/raw_data/CSM7KOJG_*fastq.gz`

### CSM7KOJO
* `sourmash compute -o CSM7KOJO.raw.sig --merge CSM7KOJO --scaled 2000 -k 21,31,51 --track-abundance ~/2020-NSURP/raw_data/CSM7KOJO_*fastq.gz`

### HSM5MD5D 
* `sourmash compute -o HSM5MD5D.raw.sig --merge HSM5MD5D --scaled 2000 -k 21,31,51 --track-abundance ~/2020-NSURP/raw_data/HSM5MD5D_*fastq.gz`

### HSM5MD5B
* `sourmash compute -o HSM5MD5B.raw.sig --merge HSM5MD5B --scaled 2000 -k 21,31,51 --track-abundance ~/2020-NSURP/raw_data/HSM5MD5B_*fastq.gz`

### HSM6XRSX
* `sourmash compute -o HSM6XRSX.raw.sig --merge HSM6XRSX --scaled 2000 -k 21,31,51 --track-abundance ~/2020-NSURP/raw_data/HSM6XRSX_*fastq.gz`



## **Sourmash Gather** 
### CSM7KOJE
1. `sourmash gather --num-results 10 CSM7KOJE.raw.sig ~/2020-NSURP/databases/genbank-k31.sbt.zip`
![](https://i.imgur.com/XxKlXtl.png)

1. `sourmash gather -o CSM7KOJE_x_genbank-k31.gather.csv CSM7KOJE.raw.sig ~/2020-NSURP/databases/genbank-k31.sbt.zip`

* less than 50.0 kpb in common
* 81 matches total
* recovered matches hit 80.7% of the query


### CSM7KOJG
1. `sourmash gather --num-results 10 CSM7KOJG.raw.sig ~/2020-NSURP/databases/genbank-k31.sbt.zip`
![](https://i.imgur.com/bAScflx.png)

1. `sourmash gather -o CSM7KOJG_x_genbank-k31.gather.csv CSM7KOJG.raw.sig ~/2020-NSURP/databases/genbank-k31.sbt.zip`

* less than 50.0 kbp in common
* 110 matches total
* recovered matches hit 81.7% of the query

### CSM7KOJO
1. `sourmash gather --num-results 10 CSM7KOJO.raw.sig ~/2020-NSURP/databases/genbank-k31.sbt.zip`
![](https://i.imgur.com/DfDU7Cl.png)


1. `sourmash gather -o CSM7KOJO_x_genbank-k31.gather.csv CSM7KOJO.raw.sig ~/2020-NSURP/databases/genbank-k31.sbt.zip`
* Less than 50.0 kbp in common
* found 73 matches total
* recovered matches hit 82.5% of the query

### HSM5MD5D 
1. `sourmash gather --num-results 10 HSM5MD5D.raw.sig ~/2020-NSURP/databases/genbank-k31.sbt.zip`
![](https://i.imgur.com/fho1ByP.png)

1. `sourmash gather -o HSM5MD5D_x_genbank-k31.gather.csv HSM5MD5D.raw.sig ~/2020-NSURP/databases/genbank-k31.sbt.zip`
* Less than 50.0 kbp in common
* found 215 matches total
* Recovered matches hit 70.0% of the query

### HSM5MD5B
1. `sourmash gather --num-results 10 HSM5MD5B.raw.sig ~/2020-NSURP/databases/genbank-k31.sbt.zip`
![](https://i.imgur.com/qEobA9C.png)

1. `sourmash gather -o HSM5MD5B_x_genbank-k31.gather.csv HSM5MD5B.raw.sig ~/2020-NSURP/databases/genbank-k31.sbt.zip`
* found less than 50.0 kbp in common
* found 292 matches total
* the recovered matches hit 70.1% of the query

### HSM6XRSX
1. `sourmash gather --num-results 10 HSM6XRSX.raw.sig ~/2020-NSURP/databases/genbank-k31.sbt.zip`
![](https://i.imgur.com/JHiJE9t.png)


1. `sourmash gather -o HSM6XRSX_x_genbank-k31.gather.csv HSM6XRSX.raw.sig ~/2020-NSURP/databases/genbank-k31.sbt.zip`
* found less than 50.0 kbp in common
* found 246 matches total
* recovered matches hit 72.8% of the query


## **KmerTrim signatures**

### 1. KOJE
`sourmash compute -o CSM7KOJE.trim.sig --merge CSM7KOJE --scaled 2000 -k 21,31,51 --track-abundance ~/2020-NSURP/kmer-trim/CSM7KOJE.kmertrim.fq.gz`

### 2. KOJG
`sourmash compute -o CSM7KOJG.trim.sig --merge CSM7KOJG --scaled 2000 -k 21,31,51 --track-abundance ~/2020-NSURP/kmer-trim/CSM7KOJG.kmertrim.fq.gz`

### 3. KOJO
`sourmash compute -o CSM7KOJO.trim.sig --merge CSM7KOJO --scaled 2000 -k 21,31,51 --track-abundance ~/2020-NSURP/kmer-trim/CSM7KOJO.kmertrim.fq.gz`

### 4. HSM5MD5B
`sourmash compute -o HSM5MD5B.trim.sig --merge HSM5MD5B --scaled 2000 -k 21,31,51 --track-abundance ~/2020-NSURP/kmer-trim/HSM5MD5B.kmertrim.fq.gz`

### 5. HSM5MD5D
`sourmash compute -o HSM5MD5D.trim.sig --merge HSM5MD5D --scaled 2000 -k 21,31,51 --track-abundance ~/2020-NSURP/kmer-trim/HSM5MD5D.kmertrim.fq.gz`

### 6. HSM6XRSX
`sourmash compute -o HSM6XRSX.trim.sig --merge HSM6XRSX --scaled 2000 -k 21,31,51 --track-abundance ~/2020-NSURP/kmer-trim/HSM6XRSX.kmertrim.fq.gz`


## **Sourmash Gather KmerTrim Data**
### CSM7KOJE
`sourmash gather --num-results 10 CSM7KOJE.trim.sig ~/2020-NSURP/databases/genbank-k31.sbt.zip`
![](https://i.imgur.com/WX9a0wU.png)


`sourmash gather -o CSM7KOJE_x_genbank-k31.gather.csv CSM7KOJE.raw.sig ~/2020-NSURP/databases/genbank-k31.sbt.zip`
* found 80 matches total
* recovered matches hit 81.5 % of the query

### CSM7KOJG
`sourmash gather --num-results 10 CSM7KOJG.trim.sig ~/2020-NSURP/databases/genbank-k31.sbt.zip`
![](https://i.imgur.com/2ZimS50.png)


`sourmash gather -o CSM7KOJG_x_genbank-k31.gather.csv CSM7KOJG.trim.sig ~/2020-NSURP/databases/genbank-k31.sbt.zip`
* found 110 matches total
* recovered matches hit 82.3% of the query

### CSM7KOJO
`sourmash gather --num-results 10 CSM7KOJO.trim.sig ~/2020-NSURP/databases/genbank-k31.sbt.zip`
![](https://i.imgur.com/14Urcax.png)


`sourmash gather -o CSM7KOJO_x_genbank-k31.gather.csv CSM7KOJO.trim.sig ~/2020-NSURP/databases/genbank-k31.sbt.zip`
* found 73 matches total
* recovered matches hit 83.1% of the query


### HSM5MD5D 
`sourmash gather --num-results 10 HSM5MD5D.trim.sig ~/2020-NSURP/databases/genbank-k31.sbt.zip`
![](https://i.imgur.com/UMcLhcP.png)


`sourmash gather -o HSM5MD5D_x_genbank-k31.gather.csv HSM5MD5D.trim.sig ~/2020-NSURP/databases/genbank-k31.sbt.zip`
* found 214 matches total
* recovered matches hit 71.2% of the query

### HSM5MD5B
`sourmash gather --num-results 10 HSM5MD5B.trim.sig ~/2020-NSURP/databases/genbank-k31.sbt.zip`
![](https://i.imgur.com/K61qERc.png)


`sourmash gather -o HSM5MD5B_x_genbank-k31.gather.csv HSM5MD5B.trim.sig ~/2020-NSURP/databases/genbank-k31.sbt.zip`
* found 293 matches total
* Recovered matches hit 70.6% of the query

### HSM6XRSX
`sourmash gather --num-results 10 HSM6XRSX.trim.sig ~/2020-NSURP/databases/genbank-k31.sbt.zip`
![](https://i.imgur.com/wsXMh9m.png)


`sourmash gather -o HSM6XRSX_x_genbank-k31.gather.csv HSM6XRSX.trim.sig ~/2020-NSURP/databases/genbank-k31.sbt.zip`
* found 245 matches total
* the recovered matches hit 73.2% of the query


# Comparison Table

(KP = Klebsiella pneumoniae)
(CC = Clostridium Clostridioform)
(BaO = Bacteroides Ovatus)
### Crohn's Diseased Patients 
| *KOJE*            | Reg  | Trim | *KOJG*            | Reg  | Trim | *KOJO*            | Reg  | Trim  |
| ----------------- | ---- | ---- | ----------------- | ---- | ---- | ----------------- | ---- | ----- |
| **Overlap (Mbp)** | 6.4  | 6.4  | **Overlap (Mbp)** | 6.4  | 6.4  | **Overlap (Mbp)** | 6.4  | 6.4   |
| **% query**       | 9.5  | 9.6  | **% query**       | 13.4 | 13.5 | **% query**       | 9.5  | 42.3  |
| **% match**       | 63.6 | 63.6 | **% match**       | 63.9 | 63.8 | **% match**       | 63.6 | 90.5  |
| **Avg. Abund**    | 17.4 | 17.1 | **Avg. Abund**    | 39.8 | 39.4 | **Avg. Abund**    | 17.4 | 113.0 |
| **Name**          | KP   | KP   | **Name**          | KP   | KP   | **Name**          | CC   | CC    |

### Healthy Patients 
| *HSM5MD5D*        | Reg  | Trim | *HSM5MD5B*        | Reg  | Trim | *HSM6XRSX*        | Reg  | Trim |
| ----------------- | ---- | ---- | ----------------- | ---- | ---- | ----------------- | ---- | ---- |
| **Overlap (Mbp)** | 5.8  | 5.8  | **Overlap (Mbp)** | 5.3  | 5.3  | **Overlap (Mbp)** | 5.7  | 5.7  |
| **% query**       | 2.4  | 2.4  | **% query**       | 1.5  | 1.5  | **% query**       | 2.5  | 2.5  |
| **% match**       | 75.8 | 75.8 | **% match**       | 68.4 | 68.4 | **% match**       | 74.3 | 74.2 |
| **Avg. Abund**    | 5.4  | 5.4  | **Avg. Abund**    | 5.6  | 5.6  | **Avg. Abund**    | 6.0  | 5.9  |
| **Name**          | BaO  | BaO  | **Name**          | BaO  | BaO  | **Name**          | BaO  | BaO  |


# Gather at different Kmer sizes
## **Kmer size 21** (Trimmed Kmer Sigs)
`cd ~/2020-NSURP/databases/
curl -L https://osf.io/dm7n4/download -o genbank-k21.sbt.zip`

### CSM7KOJE
`sourmash compute -o CSM7KOJE.trim21.sig --merge CSM7KOJE --scaled 2000 -k 21 --track-abundance ~/2020-NSURP/kmer-trim/CSM7KOJE.kmertrim.fq.gz`

`sourmash gather --num-results 10 CSM7KOJE.trim21.sig ~/2020-NSURP/databases/genbank-k21.sbt.zip`
![](https://i.imgur.com/o3o96CB.png)


### CSM7KOJG
`sourmash compute -o CSM7KOJG.trim21.sig --merge CSM7KOJG --scaled 2000 -k 21 --track-abundance ~/2020-NSURP/kmer-trim/CSM7KOJG.kmertrim.fq.gz`

`sourmash gather --num-results 10 CSM7KOJG.trim21.sig ~/2020-NSURP/databases/genbank-k21.sbt.zip`
![](https://i.imgur.com/aOep0Av.png)


### CSM7KOJO
`sourmash compute -o CSM7KOJO.trim21.sig --merge CSM7KOJO --scaled 2000 -k 21 --track-abundance ~/2020-NSURP/kmer-trim/CSM7KOJO.kmertrim.fq.gz`

`sourmash gather --num-results 10 CSM7KOJO.trim21.sig ~/2020-NSURP/databases/genbank-k21.sbt.zip`
![](https://i.imgur.com/xUdFgyh.png)

### HSM5MD5D
`sourmash compute -o HSM5MD5D.trim21.sig --merge HSM5MD5D --scaled 2000 -k 21 --track-abundance ~/2020-NSURP/kmer-trim/HSM5MD5D.kmertrim.fq.gz`

`sourmash gather --num-results 10 HSM5MD5D.trim21.sig ~/2020-NSURP/databases/genbank-k21.sbt.zip`
![](https://i.imgur.com/1plO9fU.png)


### HSM5MD5B
`sourmash compute -o HSM5MD5B.trim21.sig --merge HSM5MD5B --scaled 2000 -k 21 --track-abundance ~/2020-NSURP/kmer-trim/HSM5MD5B.kmertrim.fq.gz`

`sourmash gather --num-results 10 HSM5MD5B.trim21.sig ~/2020-NSURP/databases/genbank-k21.sbt.zip`
![](https://i.imgur.com/nNaNoZS.png)

### HSM6XRSX
`sourmash compute -o HSM6XRSX.trim21.sig --merge HSM6XRSX --scaled 2000 -k 21 --track-abundance ~/2020-NSURP/kmer-trim/HSM6XRSX.kmertrim.fq.gz`

`sourmash gather --num-results 10 HSM6XRSX.trim21.sig ~/2020-NSURP/databases/genbank-k21.sbt.zip`
![](https://i.imgur.com/7CnGUmV.png)


## **Kmer size 51** (Kmer trimmed Sigs)
`cd ~/2020-NSURP/databases/
curl -L https://osf.io/2uvsc/download -o genbank-k51.sbt.zip`

### CSM7KOJE
`sourmash compute -o CSM7KOJE.trim51.sig --merge CSM7KOJE --scaled 2000 -k 51 --track-abundance ~/2020-NSURP/kmer-trim/CSM7KOJE.kmertrim.fq.gz`


`sourmash gather --num-results 10 CSM7KOJE.trim51.sig ~/2020-NSURP/databases/genbank-k51.sbt.zip`
![](https://i.imgur.com/bDNUk3K.png)


### CSM7KOJG
`sourmash compute -o CSM7KOJG.trim51.sig --merge CSM7KOJG --scaled 2000 -k 51 --track-abundance ~/2020-NSURP/kmer-trim/CSM7KOJG.kmertrim.fq.gz`


`sourmash gather --num-results 10 CSM7KOJG.trim51.sig ~/2020-NSURP/databases/genbank-k51.sbt.zip`
![](https://i.imgur.com/pj1tHnA.png)


### CSM7KOJO
`sourmash compute -o CSM7KOJO.trim51.sig --merge CSM7KOJO --scaled 2000 -k 51 --track-abundance ~/2020-NSURP/kmer-trim/CSM7KOJO.kmertrim.fq.gz`

`sourmash gather --num-results 10 CSM7KOJO.trim51.sig ~/2020-NSURP/databases/genbank-k51.sbt.zip`
![](https://i.imgur.com/Ej0iXth.png)


### HSM5MD5D
`sourmash compute -o HSM5MD5D.trim51.sig --merge HSM5MD5D --scaled 2000 -k 51 --track-abundance ~/2020-NSURP/kmer-trim/HSM5MD5D.kmertrim.fq.gz`

`sourmash gather --num-results 10 HSM5MD5D.trim51.sig ~/2020-NSURP/databases/genbank-k51.sbt.zip`
![](https://i.imgur.com/c2uJ8rp.png)


### HSM5MD5B
`sourmash compute -o HSM5MD5B.trim51.sig --merge HSM5MD5B --scaled 2000 -k 51 --track-abundance ~/2020-NSURP/kmer-trim/HSM5MD5B.kmertrim.fq.gz`

`sourmash gather --num-results 10 HSM5MD5B.trim51.sig ~/2020-NSURP/databases/genbank-k51.sbt.zip`
![](https://i.imgur.com/EsREoiX.png)


### HSM6XRSX
`sourmash compute -o HSM6XRSX.trim51.sig --merge HSM6XRSX --scaled 2000 -k 51 --track-abundance ~/2020-NSURP/kmer-trim/HSM6XRSX.kmertrim.fq.gz`

`sourmash gather --num-results 10 HSM6XRSX.trim51.sig ~/2020-NSURP/databases/genbank-k51.sbt.zip`
![](https://i.imgur.com/I2fv4WS.png)



