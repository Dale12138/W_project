## how many exon reads for total rna-seq pool?
path <- "/home/mdwilson/Desktop/Dale's/RELA_RNAseq/exon_number_test"
exon_test<- read.table(file=path,header=T,sep="\t",skip=1)
sum(exon_test[,2])
