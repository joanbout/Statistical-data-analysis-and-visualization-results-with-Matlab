%This function has two inputs. A file and a column of it and gives as an
%output the number of the cells which contain some information
function [num_patients]=patients(filename,column)
%This command reads the xlsx file Data and creates a table T with its
%values
file=readtable(filename);
%The width command returns the number of columns of the table filename
col=width(file);
%The if statement checks if the number of the input column is a valid
%number. To be more precise if the number is above 0 and less or equal of
%the number of the columns. It returns the proper message if one of these
%conditions is not true.
if column>col
    disp('Wrong number, the columns are less')
elseif column<0
    disp('Not a valid number of column')
else 
    %The for loop is used to return the number of cells that contain
    %information. It starts from 0 to the number of the columns.
  for i=1:column
      %We take the specific column of the file
      T=file(:,column);
      %This command finds if any of T table value is missing and removes the row 
      %of the missing cell creating a new T with less rows
      T=T(~any(ismissing(T),2),:);
      %After removing the empty cells of the column we use the command
      %height to measure the number of the cells that we have.
      num_patients=height(T);
  end
end