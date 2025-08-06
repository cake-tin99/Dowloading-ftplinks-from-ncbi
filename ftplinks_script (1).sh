#!/bin/bash 
counter=0
total=$(wc -l ftplinks.csv)
while read line;
do
counter=$((counter+1))
wget -q --show-progress --no-clobber ${line}/*v1_genomic.fna.gz
gunzip *v1_genomic.fna.gz
mv *.fna ./curated_database
echo $counter out of $total done
done < ftplinks.csv
#done
