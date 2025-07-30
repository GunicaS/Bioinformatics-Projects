setwd('~/BIT150') #cd in bash
library(tidyverse)
library(ggplot2)
library(dplyr)

#data from GTExPortal, breast
master <- read.csv("expression_tpm_breast.csv",header=FALSE)
master <- master[-c(1, 2), ]#delete first two rows to initially clear the data
master_tpm <- filter(master,V1=="ENSG00000143514.17") #filter to only the row with tp53bp2 gene
master_ID <- filter(master, V1=="Name") #filter to make a row with all patient ID
joined_master <-rbind(master_ID,master_tpm) #combine those two row to make a new table with gene expression of tp53bp2 only
##Transpose the data, shift data into vertical format
long_master <- as.data.frame(t(joined_master))
colnames(long_master) <- c("tissue","expression_level")  # Rename the transposed column
long_master<-long_master[-c(1,2),] #exculde row with name and description to clear the data

#data from Protein Atlas
breast <- read.csv("tp53_expression_breast_ProteinAtlas.csv")
breast <- breast %>% separate('Sample_description', c("Age", "Sex"), sep = ",") #separate two type of info that orginally in one cell to two different columns
breast <- breast %>% select(-nTPM) #remove expression level of tp53
merged_data_breast <- inner_join(long_master, breast, by = c("tissue" = "GTEx_sample_id"))
write.csv(merged_data_breast, "merged_data_breast.csv")
view(merged_data_breast)

merged_data_breast$expression_level <- as.numeric(merged_data_breast$expression_level)
ggplot(merged_data_breast, aes(x = Age, y = expression_level, fill = Sex)) +
  stat_summary(fun = mean, geom = "bar", position = "dodge") +
  stat_summary(fun.data = mean_se, geom = "errorbar", width = 0.2, position = position_dodge(width = 0.9)) +
  labs(title = "TP53BP2 Expression by Age and Sex in Breast Tissue",
       x = "Age",
       y = "Expression Level",
       fill = "Sex")