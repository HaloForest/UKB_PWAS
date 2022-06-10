#!/bin/bash


Rscript /home1/PWAS/PHESANT-master/WAS/phenomeScan.r \
--phenofile="/home1/PWAS/ukbdata.csv" \
--traitofinterestfile="/home1/PWAS/PRS_8pT.csv" \
--variablelistfile="/home1/PWAS/PHESANT-master/variable-info/outcome-info.tsv" \
--datacodingfile="/home1/PWAS/PHESANT-master/variable-info/data-coding-ordinal-info.txt" \
--traitofinterest="pT_1" \
--resDir="/home1/PWAS/result/" \
--sensitivity \
--userId="userId"


Rscript /home1/PWAS/PHESANT-master/WAS/phenomeScan.r \
--phenofile="/home1/PWAS/ukbdata.csv" \
--traitofinterestfile="/home1/PWAS/PRS_8pT.csv" \
--variablelistfile="/home1/PWAS/PHESANT-master/variable-info/outcome-info.tsv" \
--datacodingfile="/home1/PWAS/PHESANT-master/variable-info/data-coding-ordinal-info.txt" \
--traitofinterest="pT_0.1" \
--resDir="/home1/PWAS/result/" \
--sensitivity \
--userId="userId"


Rscript /home1/PWAS/PHESANT-master/WAS/phenomeScan.r \
--phenofile="/home1/PWAS/ukbdata.csv" \
--traitofinterestfile="/home1/PWAS/PRS_8pT.csv" \
--variablelistfile="/home1/PWAS/PHESANT-master/variable-info/outcome-info.tsv" \
--datacodingfile="/home1/PWAS/PHESANT-master/variable-info/data-coding-ordinal-info.txt" \
--traitofinterest="pT_0.01" \
--resDir="/home1/PWAS/result/" \
--sensitivity \
--userId="userId"


Rscript /home1/PWAS/PHESANT-master/WAS/phenomeScan.r \
--phenofile="/home1/PWAS/ukbdata.csv" \
--traitofinterestfile="/home1/PWAS/PRS_8pT.csv" \
--variablelistfile="/home1/PWAS/PHESANT-master/variable-info/outcome-info.tsv" \
--datacodingfile="/home1/PWAS/PHESANT-master/variable-info/data-coding-ordinal-info.txt" \
--traitofinterest="pT_0.001" \
--resDir="/home1/PWAS/result/" \
--sensitivity \
--userId="userId"


Rscript /home1/PWAS/PHESANT-master/WAS/phenomeScan.r \
--phenofile="/home1/PWAS/ukbdata.csv" \
--traitofinterestfile="/home1/PWAS/PRS_8pT.csv" \
--variablelistfile="/home1/PWAS/PHESANT-master/variable-info/outcome-info.tsv" \
--datacodingfile="/home1/PWAS/PHESANT-master/variable-info/data-coding-ordinal-info.txt" \
--traitofinterest="pT_0.5" \
--resDir="/home1/PWAS/result/" \
--sensitivity \
--userId="userId"


Rscript /home1/PWAS/PHESANT-master/WAS/phenomeScan.r \
--phenofile="/home1/PWAS/ukbdata.csv" \
--traitofinterestfile="/home1/PWAS/PRS_8pT.csv" \
--variablelistfile="/home1/PWAS/PHESANT-master/variable-info/outcome-info.tsv" \
--datacodingfile="/home1/PWAS/PHESANT-master/variable-info/data-coding-ordinal-info.txt" \
--traitofinterest="pT_0.05" \
--resDir="/home1/PWAS/result/" \
--sensitivity \
--userId="userId"


Rscript /home1/PWAS/PHESANT-master/WAS/phenomeScan.r \
--phenofile="/home1/PWAS/ukbdata.csv" \
--traitofinterestfile="/home1/PWAS/PRS_8pT.csv" \
--variablelistfile="/home1/PWAS/PHESANT-master/variable-info/outcome-info.tsv" \
--datacodingfile="/home1/PWAS/PHESANT-master/variable-info/data-coding-ordinal-info.txt" \
--traitofinterest="pT_0.005" \
--resDir="/home1/PWAS/result/" \
--sensitivity \
--userId="userId"


Rscript /home1/PWAS/PHESANT-master/WAS/phenomeScan.r \
--phenofile="/home1/PWAS/ukbdata.csv" \
--traitofinterestfile="/home1/PWAS/PRS_8pT.csv" \
--variablelistfile="/home1/PWAS/PHESANT-master/variable-info/outcome-info.tsv" \
--datacodingfile="/home1/PWAS/PHESANT-master/variable-info/data-coding-ordinal-info.txt" \
--traitofinterest="pT_0.0005" \
--resDir="/home1/PWAS/result/" \
--sensitivity \
--userId="userId"