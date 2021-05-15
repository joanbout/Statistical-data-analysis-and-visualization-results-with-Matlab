clear;
clc;
T = readtable('Data.xlsx');
T(:,3:12)=[];
T=T(~any(ismissing(T),2),:);
Ts=size(T);
copd=T.COPD;
copd=categorical(copd);
copd=='Yes'
c=ans;
c1=double(c);
smoking=T.smoking;
smoking=categorical(smoking);
smoking=='Yes'
sm=ans;
sm1=double(sm);
age=T.Age;
sex=T.Sex;
sex=categorical(sex);
sex=='female'
s=ans;
s1=double(s);
CopdNom = nominal(T.COPD);
SmokNom = nominal(T.smoking);
subplot(2,2,1)
boxplot(age, CopdNom)
title('COPD by Age')
subplot(2,2,2)
boxplot(sm1,CopdNom)
title('COPD by Smoking')
%%boxplot(age,SmokNom)
%%title('Smoking by Age')
subplot(2,2,3)
boxplot(s1, CopdNom)
title('COPD by Sex')
subplot(2,2,4)
boxplot(s1,SmokNom)
title('Smoking by Sex')

covariance=cov(sm1,c1)