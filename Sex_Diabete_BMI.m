clear;
clc;
T = readtable('Data.xlsx');
sex=T.Sex;
bmi=T.BMI;
diabete=T.DiabetesMelitus;
age=T.Age;
Ts=size(T);
sex=categorical(sex);
sex=='female'
s=ans;
s1=double(s);
diabete=categorical(diabete);
diabete=='Yes'
d=ans;
d1=double(d);

subplot(1,2,1)
gscatter(bmi,d1,s1,'bgr','x.o')
title('BMI Diabete, Grouped by Sex')
xlabel('BMI'), ylabel('Diabete')
legend('Male','Female','Location','NorthEast')

subplot(1,2,2)
gscatter(bmi,age,d1,'bgr','x.o')
title('BMI Age, Grouped Diabete')
xlabel('BMI'), ylabel('Age')
legend('No/Undefined','Yes','Location','best')
