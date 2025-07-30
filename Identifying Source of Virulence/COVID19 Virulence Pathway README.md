
# Nextclade Analysis of SARS-CoV-2 Sequences

This project utilizes the Nextclade program, a tool from the Nextstrain project, to perform a bioinformatic analysis of several SARS-CoV-2 genome sequences. The goal is to assign clades, identify mutations, and understand the evolutionary relationships between different variants.

---

## About Nextclade

Nextclade is a powerful open-source tool used by scientists and public health officials to analyze pathogen genomes. It performs several key functions:
* Sequence alignment 
* Clade assignment and mutation calling 
* Phylogenetic placement to understand evolutionary history 
* Quality control checks on sequence data 

The tool can be accessed via a user-friendly web interface for smaller datasets or a more powerful command-line interface (CLI) for large-scale data processing and automation.

---

## Project Methodology

This analysis was conducted using the Nextclade command-line tool. The general workflow involved:
1.  Downloading the official SARS-CoV-2 reference dataset provided by Nextclade.
2.  Running the input sequence (`BIT150_assembly.fasta`) against the reference dataset.
3.  Generating output files, including alignments, mutation reports, and a phylogenetic tree file for visualization.
4.  Running a script to process additional unknown sequences and determine their clades.

---

## Analysis and Key Findings

### Output Analysis
Nextclade generates several useful output files:
* **nextclade.tsv:** A detailed report containing clade assignments, a list of mutations (substitutions, deletions), and quality control metrics.
* **nextclade.auspice.json:** A file that can be uploaded to the Auspice web viewer to visualize the phylogenetic tree, showing how the sample sequence relates to other known variants.

### Initial Sequence Results
The analysis of the initial FASTA file revealed:
* **Clade:** The sequence belongs to clade **21J**, also known as the **Delta** variant.
* **Mutations:** A mutation was identified in the **ORF1a gene**, which is critical for viral replication and transcription. Mutations in this gene can potentially affect protease function and viral replication efficiency.
* **Quality:** The overall quality control score was good, at approximately 8.5.
* **Evolutionary Context:** The phylogenetic tree showed that the Delta variant diverged significantly from ancestral clades like 20A and 20B. While it has many mutations compared to these ancestors, it is less mutated than later variants like Omicron.

### Scripted Analysis of Additional Sequences
A script was used to analyze three additional sequences, which were identified as belonging to different clades:
* `BIT150_2021-02-17`: **Epsilon (21C)** 
* `BIT150_2023-06-20`: **Alpha (20I)** 
* `BIT150_2024-05-18`: **Omicron (22B)** 

---

## Discussion and Conclusion

Nextclade proved to be a powerful and easy-to-use tool for genomic analysis, providing detailed reports on mutations, clades, and data quality. The ability to customize runs, for instance by targeting only the Spike (S) gene, adds to its flexibility.

However, the analysis also highlighted some limitations:
* The tool's alignments are heavily dependent on the quality of the reference genome.
* It provides data on mutations but does not predict their functional impact, requiring other bioinformatic tools for deeper analysis.
* Nextclade has built-in support for a limited number of pathogens. Analyzing other pathogens requires the user to provide their own complete reference datasets, which can be a significant drawback.