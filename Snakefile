
SAMPLES=["CSM7KOJE","CSM7KOJO","CSM7KOJG","HSM5MD5D","HSM5MD5B","HSM6XRSX"]


rule all:
    input:
        #expand("quality/{sample}_1.trim.fastq.gz",sample=SAMPLES),
        #expand("quality/{sample}_2.trim.fastq.gz",sample=SAMPLES),
        #expand("quality/{sample}.kmertrim.fq.gz",sample=SAMPLES),
        #expand("quality/{sample}.new.sig",sample=SAMPLES), 
         expand("quality/{sample}_x_genbank-k31.gather.csv",sample=SAMPLES)

rule trim_reads:
    input:
        in1="raw_data/{sample}_R1.fastq.gz",
        in2="raw_data/{sample}_R2.fastq.gz",
    output:
        out1="quality/{sample}_1.trim.fastq.gz",
        out2="quality/{sample}_2.trim.fastq.gz",
        json="quality/{sample}.fastp.json",
        html="quality/{sample}.fastp.html"
    shell:
        """
        fastp --in1 {input.in1}  --in2 {input.in2}  \
        --out1 {output.out1} --out2 {output.out2}  \
        --detect_adapter_for_pe  --qualified_quality_phred 4 \
        --length_required 31 --correction \
        --json {output.json} --html {output.html}
        """


rule kmer_trim:
    input:
        in1="quality/{sample}_1.trim.fastq.gz",
        in2="quality/{sample}_2.trim.fastq.gz",
    output:
        "quality/{sample}.kmertrim.fq.gz"
    shell:
        """
        interleave-reads.py {input.in1} {input.in2} | \
        trim-low-abund.py --gzip -C 3 -Z 18 -M 20e9 -V - -o {output}
        """

rule sig:
    input:
       "quality/{sample}.kmertrim.fq.gz",
    output: 
       "quality/{sample}.new.sig"
    shell:
       """
       sourmash compute -o {output} --name {wildcards.sample} --scaled 2000 -k 21,31,51 --track-abundance {input}
       """

rule gather:
      input:
         sig="quality/{sample}.new.sig", 
         db="databases/genbank-k31.sbt.zip",
      output:
         "quality/{sample}_x_genbank-k31.gather.csv"
      shell:
         """
         sourmash gather -o {output} {input.sig} {input.db}
         """

