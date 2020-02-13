#!/bin/bash
# alignment
for i in {1..5}; do bwa mem lambda.fa l$i.read1.fq l$i.read2.fq | samtools view -bSh - > l$i.bam; done
# sort
for i in *.bam; do samtools sort $i -o sorted_$i; done
# index them
for i in sorted*.bam; do samtools index $i; done
