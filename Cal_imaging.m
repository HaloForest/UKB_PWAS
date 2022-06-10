Resultcsd_image=cell(2,size(pheno_dataall,2));

for kk=1:size(pheno_dataall,2)
    
    phenodataori= table2array(pheno_dataall(:,kk));
    
    if strfind(class(phenodataori),'cell')==1
        phenodataori=str2double(cellstr(phenodataori));
    end
    phenodata=phenodataori(~isnan(phenodataori));
    phenoid=pheno_id(~isnan(phenodataori));
    
    Cov_model1=(Cov_all(~isnan(phenodataori),:));

    final_id = intersect_multi({phenoid;newimageid;site_id;imageid_aseg});

[~,index]=intersect(phenoid,final_id);
cov_final=Cov_model1(index,:);


[~, index] = intersect(site_id, final_id);
 site_cov_final = site_cov(index,:);

cov_final2 = [cov_final, site_cov_final];

[~,index]=intersect(phenoid,final_id);
pheno_final=phenodata(index,:);


[~,index]=intersect(newimageid,final_id);
UKB_area_final=UKB_aparc_Area(index,1:end-1);
UKB_thickness_final=UKB_aparc_Thickness(index,1:end-1);
UKB_volume_final=UKB_aparc_Volume(index,1:end-1);
UKB_aparc=[UKB_area_final UKB_thickness_final UKB_volume_final];
aparcname=UKB_aparc.Properties.VariableNames;
UKB_aparc_final=double(cell2mat(table2cell(UKB_aparc)));

[~,index]=intersect(imageid_aseg,final_id);
UKB_aseg_final=double(cell2mat(table2cell(UKB_aseg_Volume(index,2:46))));
asegname=UKB_aseg_Volume.Properties.VariableNames;

C_value_aparc = nan(204,1);
P_value_aparc= nan(204,1);
 
parfor i=1:size(UKB_aparc,2)
    i
    Covariate = cov_final2;
    
    [C_value_aparc(i,:), P_value_aparc(i,:)] = partialcorr(UKB_aparc_final(:,i),pheno_final,Covariate,'rows','complete');


end
Resultcsd_image{1,kk}=[aparcname' num2cell(C_value_aparc) num2cell(P_value_aparc)];


C_value_aseg = nan(45,1);
P_value_aseg= nan(45,1);

parfor i=1:size(UKB_aseg_final,2)
    i
    Covariate = cov_final2;
    
    [C_value_aseg(i,:), P_value_aseg(i,:)] = partialcorr(UKB_aseg_final(:,i),pheno_final,Covariate,'rows','complete');
end
Resultcsd_image{2,kk}=[asegname(2:46)' num2cell(C_value_aseg) num2cell(P_value_aseg)];


end