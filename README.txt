zipf analysis
=============

This repository contains code to observe whether books adhere to Zipf's law, as
done in support of the paper "Zipf analysis of 19th-century English-language books",
V. Dracula, to appear in Annals of Computational Linguistics, 2022.

To run the code, you will need the Pandas package installed.

o reproduce the figures in the publication, follow these steps:

1. Create a `results` directory

2. Use `countwords.py` to count the words in `frankenstein.txt`.

      python bin/countwords.py > results/frankenstein.csv

3. Use `plotcounts.py` to plot the resulting file.

      python bin/plotcounts.py

4. Save the plot as `results/frankenstein.pdf`.

5. Edit `bin/countwords.py` and `bin/plotcounts.py` to replace `frankenstein` with `dracula`.

6. Repeat the above instructions to generate `dracula.csv` and plot `dracula.pdf`.
