clear;
clc;
%This command reads the xlsx file Data and creates a table T with its
%values
T = readtable('Data.xlsx');
%This command removes from T table the columns 8 to 16
T(:,8:16)=[];
%This command finds if any of T table value is missing and removes the row
%of the missing cell creating a new T with less rows
T=T(~any(ismissing(T),2),:);
%The variable age has the values of the column Age of T table
age=T.Age;
%The variable systolic has the values of the column Systolic Arterial Pressure of T table
systolic=T.SystolicArterialPressure;
%Plot command draws a line diagram with age as x label and systolic
%arterial pressure as y label
subplot(1,2,1)
plot(age,systolic)
xlabel('Age'), ylabel('Systolic Arterial Pressure')
title('Age-Systolic Arterial Pressure Line Diagram')
subplot(1,2,2)
scatter(age,systolic)
xlabel('Age'), ylabel('Systolic Arterial Pressure')
title('Age-Systolic Arterial Pressure Line Diagram')