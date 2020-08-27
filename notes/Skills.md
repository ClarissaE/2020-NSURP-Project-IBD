# Skills Learned in NSURP 
[toc]

![dna drawing](https://i.imgur.com/YPGh3kZ.png)
![](https://i.imgur.com/H9ShJUi.jpg)

[Project website](https://dib-lab.github.io/2020-NSURP/)

### Commands
`ssh cedmundo@farm.cse.ucdavis.edu` This logs into farm
`ls` list files
`cd folder/` change location into folder

- open a terminal not in farm
    - `scp -P 2022 username@farm.cse.ucdavis.edu:~/2020-NSURP/trim/*.html ./`
- Use tab-complete as much as possible
    - `cp *trim.hmtl /mnt/c/Users/YOURUSERNAME/Desktop/NSURP`
    - `cp HSMA3*.html /mnt/c/Users/Wissa/Desktop/NSURP`

### About the samples
We are working with 3 Crohn's disease patients, and 3 health controls

CSM7KOJE.tar  
CSM7KOJO.tar  
CSM7KOJG.tar
HSM5MD5D.tar
HSM5MD5B.tar  
HSM6XRSX.tar


### highlighting

add info to `.bash_profile` to get colors

```
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls --color=auto'
```

### set up conda
There is 3 steps to making a conda environment
* `conda create -y --name nsurp-env`
    * or other name
* `conda activate nsurp-env`
* `conda install -y sourmash`
    * or other software



The **goal** of our *project* is to analyze some metagenomic data
