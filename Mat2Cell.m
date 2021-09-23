function C =Mat2Cell(mat,hdr)
%% given a matrix of time series data and a header, convert the matrix  to a cell, and add the header.
% mat :input   vector with the first column consisting of dates matlab datenumbers
% hdr, a n X 1 cell with header information.
% Gopal Mulukutla
% January 2015

%%
sz=size(mat);
L=sz(1);
Col=sz(2);
% create a cell with length L + 2 and Col columns
C=cell(L+1,Col+1);
C(1,:)=[cellstr('Date') cellstr('Time') hdr(:,2:end)];

DateNums=mat(:,1);
DateStamps=cellstr(datestr(DateNums,'yyyy-mm-dd'));
TimeStamps=cellstr(datestr(DateNums,'HH:MM'));
    C(2:end,1)=DateStamps;
    C(2:end,2)=TimeStamps;
data=mat(:,2:end);
Csz=size(C);
Csz=Csz(2);
for i=3:Csz
C(2:end,i)=num2cell(data(:,i-2));
end

end
