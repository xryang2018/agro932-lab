#!/bin/bash
for i in {1..5}
do
   wgsim lambda.fa -N 5000 -1 100 -2 100 -r 0.01 -e 0 -R 0 -X 0 l$i.read1.fq l$i.read2.fq
done
