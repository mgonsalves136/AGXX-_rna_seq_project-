#!/bin/bash -l

#SBATCH --job-name=RNA_mapping
#SBATCH --output=/scratch/users/%u/AppliedBioinfoProject/results/%j.out
#SBATCH -p msc_appbio
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=4
#SBATCH --time=04:00:00
#SBATCH --mem=12G

module load bowtie2/2.5.4
module load samtools/1.23.1

for sample in ERR2713020 ERR2713021 ERR2713022 ERR2713023 ERR2713024 ERR2713025
do

    bowtie2 -x reference_genome/CP000730_index \
        -1 raw_data/${sample}_1.fastq.gz \
        -2 raw_data/${sample}_2.fastq.gz \
        2> results/${sample}_mapping.log | \
    samtools sort -o results/${sample}.bam

done
