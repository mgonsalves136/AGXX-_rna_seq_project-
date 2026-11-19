# AGXX_rna_seq_project-
Reproducing a study investigating AGXX stress response on Staphylococcus aureus

## RNA-seq read mapping

Paired-end RNA-seq reads from six samples (ERR2713020–ERR2713025)
were aligned to the *Staphylococcus aureus* USA300_TCH1516
chromosome (NCBI accession CP000730).

### Software
- Bowtie2 v2.5.4 for paired-end read alignment.
- SAMtools v1.23.1 for coordinate sorting and BAM conversion.

### Workflow
The reference genome was indexed using Bowtie2. Paired-end reads were aligned using default settings. SAM output
was piped directly into `samtools sort` to generate BAM files.

The mapping script is available in `scripts/mapping.sh`. Bowtie2 alignment logs are available in `results/mapping_logs/`.

### Overall alignment rates

| Sample | Overall alignment rate |
|---|---:|
| ERR2713020 | 92.22% |
| ERR2713021 | 92.45% |
| ERR2713022 | 91.12% |
| ERR2713023 | 92.84% |
| ERR2713024 | 79.78% |
| ERR2713025 | 84.13% |
E0F
