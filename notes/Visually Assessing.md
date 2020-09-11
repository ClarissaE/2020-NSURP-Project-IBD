# Visually Assessing Samples
* Sign into farm
 `ssh cedmundo@farm.cse.ucdavis.edu`
* Download file into home computer
`scp -P 2022 username@farm.cse.ucdavis.edu:~/2020-NSURP/trim/*.html ./`
* copy file into Desktop
 `cp *trim* /mnt/c/Users/Wissa/Desktop/NSURP`
 
## Transfered samples
### fastq Files
 
* CSM7KOJE.tar
* CSM7KOJO.tar
* CSM7KOJG.tar
* HSM5MD5D.tar  
* HSM5MD5B.tar  
* HSM6XRSX.tar

### Code
* be in tmux  (`tmux a -t nsurp`)
  
  
`fastp --in1 ~/2020-NSURP/raw_data/HSM6XRSX_R1.fastq.gz \
  --in2 ~/2020-NSURP/raw_data/HSM6XRSX_R2.fastq.gz \
  --out1 HSM6XRSX_1.trim.fastq.gz \
  --out2 HSM6XRSX_2.trim.fastq.gz \
  --detect_adapter_for_pe \
  --qualified_quality_phred 4 \
  --length_required 31 --correction \
  --json HSM6XRSX.trim.json \
  --html HSM6XRSX.trim.html`
 
`fastp --in1 ~/2020-NSURP/raw_data/HSM5MD5B_R1.fastq.gz \
  --in2 ~/2020-NSURP/raw_data/HSM5MD5B_R2.fastq.gz \
  --out1 HSM5MD5B_1.trim.fastq.gz \
  --out2 HSM5MD5B_2.trim.fastq.gz \
  --detect_adapter_for_pe \
  --qualified_quality_phred 4 \
  --length_required 31 --correction \
  --json HSM5MD5B.trim.json \
  --html HSM5MD5B.trim.html`

### Run K-mer Trimming
  `interleave-reads.py ~/2020-NSURP/trim/HSM5MD5B_1.trim.fastq.gz ~/2020-NSURP/trim/HSM5MD5B_2.trim.fastq.gz | \
        trim-low-abund.py --gzip -C 3 -Z 18 -M 20e9 -V - -o HSM5MD5B.kmertrim.fq.gz`
  
  `interleave-reads.py ~/2020-NSURP/trim/HSM6XRSX_1.trim.fastq.gz ~/2020-NSURP/trim/HSM6XRSX_2.trim.fastq.gz | \
        trim-low-abund.py --gzip -C 3 -Z 18 -M 20e9 -V - -o HSM6XRSX.kmertrim.fq.gz`
