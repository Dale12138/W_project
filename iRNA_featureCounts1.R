#!/usr/bin/Rscript
## seems not working for the writing step.... dont konw why....
library("Rsubread")
dirname="/home/mdwilson/hpf_trial/liangxi/projects/rela/bam/rna_seq/"
file_path = "WL650_none_aortic_HAoEC_none_hsap_1487_Basal_TCAG1Aligned_uniq_sortedByReadname.bam"

total_rna_counts= featureCounts(paste(dirname,file_path,sep=""),useMetaFeature=F,requireBothEndsMapped =T, countChimericFragments=F,
				annot.inbuilt="hg19", GTF.featureType="exon",strandSpecific=2,isPairedEnd=T,minFragLength=25,maxFragLength=100000,nthreads=32)
total_rna_counts1= as.data.frame(total_rna_counts$counts,rownames=row.names(total_rna_counts$counts))
print(nrow(total_rna_counts1))
write.table(total_rna_counts1,file="/home/mdwilson/Desktop/Dale's/RELA_RNAseq/exon_number_test",sep="\t")

