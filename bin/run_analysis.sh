#!/usr/bin/env bash
set -euo pipefail

# Downloading the data
mkdir -p data

curl -L -o data/frankenstein.txt https://www.gutenberg.org/files/84/84-0.txt
curl -L -o data/dracula.txt https://www.gutenberg.org/files/345/345-0.txt


mkdir -p results
for book in dracula frankenstein
do
    python bin/countwords.py data/${book}.txt --num 100 > results/${book}.csv
    python bin/plotcounts.py results/${book}.csv --outfile results/${book}.pdf
done
