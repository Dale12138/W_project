# check the iRNA-seq intron and exon
basal.treatment.exon <- read.table("~/Desktop/Dale's/basal.treatment.exon1.txt",sep="\t",header=T)
str(basal.treatment.exon)
hist(basal.treatment.exon$Pval, breaks=100)
basal.treatment.exon.sig <- basal.treatment.exon[basal.treatment.exon$Padj<0.1,]
str(basal.treatment.exon.sig)
hist(basal.treatment.exon.sig$Log2_FC,breaks=100)
summary(basal.treatment.exon.sig$Log2_FC[basal.treatment.exon.sig$Log2_FC<0])
## all can be considered as sig_up or sig_down
sum(basal.treatment.exon.sig$Log2_FC<0)
write.table(sort(basal.treatment.exon.sig$Symbol),"~/Desktop/Dale's/RELA_regulated_gene_list_by_iRNA_exon",
            row.names=F)


###weird things: no logfoldchange between -1 and 1; pval looks perfect (big tail on the end around 1)
###intron
basal.treatment.intron <- read.table("~/Desktop/Dale's/basal.treatment.intron1.txt",sep="\t",header=T)
str(basal.treatment.intron)
hist(basal.treatment.intron$Pval, breaks=100)
basal.treatment.intron.sig <- basal.treatment.intron[basal.treatment.intron$Padj<0.1,]
str(basal.treatment.intron.sig)
hist(basal.treatment.intron.sig$Log2_FC,breaks=100)
summary(basal.treatment.intron.sig$Log2_FC[basal.treatment.intron.sig$Log2_FC>0])
## all can be considered as sig_up or sig_down
sum(basal.treatment.intron.sig$Log2_FC>0)
write.table(sort(basal.treatment.intron.sig$Symbol),"~/Desktop/Dale's/RELA_regulated_gene_list_by_iRNA_intron",
            row.names=F)
basal.treatment.exon.sig[basal.treatment.exon.sig$Symbol=="ANO1",]
