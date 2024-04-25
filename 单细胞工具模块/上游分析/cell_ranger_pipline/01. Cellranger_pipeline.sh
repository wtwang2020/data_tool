/home/wangweitao/wangweitao/learning/Single-cell-atlas-of-sex-differences-and-androgen-effects/cellranger/cellranger-8.0.0/cellranger mkgtf Mus_musculus.GRCm38.93.gtf Mus_musculus.GRCm38.93.filtered.gtf \
                 --attribute=gene_biotype:protein_coding \
                 --attribute=gene_biotype:lincRNA \
                 --attribute=gene_biotype:antisense \
                 --attribute=gene_biotype:IG_LV_gene \
                 --attribute=gene_biotype:IG_V_gene \
                 --attribute=gene_biotype:IG_V_pseudogene \
                 --attribute=gene_biotype:IG_D_gene \
                 --attribute=gene_biotype:IG_J_gene \
                 --attribute=gene_biotype:IG_J_pseudogene \
                 --attribute=gene_biotype:IG_C_gene \
                 --attribute=gene_biotype:IG_C_pseudogene \
                 --attribute=gene_biotype:TR_V_gene \
                 --attribute=gene_biotype:TR_V_pseudogene \
                 --attribute=gene_biotype:TR_D_gene \
                 --attribute=gene_biotype:TR_J_gene \
                 --attribute=gene_biotype:TR_J_pseudogene \
                 --attribute=gene_biotype:TR_C_gene

/home/wangweitao/wangweitao/learning/Single-cell-atlas-of-sex-differences-and-androgen-effects/cellranger/cellranger-8.0.0/cellranger mkref --genome=mm10 \
                 --fasta=Mus_musculus.GRCm38.dna.primary_assembly.fa \
                 --genes=Mus_musculus.GRCm38.93.filtered.gtf \
                 --ref-version=3.0.0
                 
################# 3. Aligns sequencing reads in FASTQ files to generate expression matrix files for further analysis.
#################
#################
#################
#################
#################
# --fastqs=/../raw/adrenal \为原始数据的位置
/home/wangweitao/wangweitao/learning/Single-cell-atlas-of-sex-differences-and-androgen-effects/cellranger/cellranger-8.0.0/cellranger count --id=FD_1_adrenal \
                   --transcriptome=/../mm10 \
                   --fastqs=/../raw/adrenal \
                   --sample=FD-1-adrenal \
                   --expect-cells=10000 \
                   --localcores=15 \
                   --localmem=64
