clear;
% Epilogi deuteris Periodou apo 21/4/2021 kai pros ta piso
% 12 Evdomades = 84 meres
% Prokiptoun ta idia symperasmata me tin proti periodo.

Data = readtable('FullEodyData.xlsx');
dates = string(Data.Date);
new_cases = Data.NewCases;
pcr = Data.PCR_Tests;
rapid = Data.Rapid_Tests;
deaths = Data.New_Deaths;
index1 = find(strcmp(dates(),'21/4/2021'));
deaths1 = deaths(index1-83:index1);
n = size(deaths1,1);

X = ones(84,30); % 30 Deiktes thetikotitas gia 84 meres


for i=1:30
    X(:,i) = Group37Exe8Pro2(index1 - i + 1,new_cases,pcr,rapid);
end

% Pollapli Grammiki Palindromisi
arr = [ones(n,1) X];
b1 = regress(deaths1,arr);
yfit = arr*b1;
e = deaths1 - yfit;
temp1 = sum(e.^2);
temp2 = (n-1)*var(deaths1);

adjR1 = 1 - (temp1/temp2)*(n-1)/(n-length(b1)-1);

% Pollapli Grammiki Palindromisi meiomeno

[b2,se,pval,finalmodel,stats] = stepwisefit(X,deaths1);
b0 = stats.intercept;
for i=1:size(b2,1)
    if finalmodel(i) == 0
        b2(i) = 0;
    end
end

b_final = [b0;b2];
yfit = [ones(n,1) X]*b_final;
e2 = deaths1 - yfit;

temp3 = sum(e.^2);
temp4 = (n-1)*var(deaths1);

adjR2 = 1 - (temp3/temp4)*(n-1)/(n-length(b_final)-1);

% Oi dio syntelestes bgazoun akrivos to idio apotelesma me akrivia 4 dekadikou
%adjR1 = adjR2= 0.8811

% Auto simeni oti to meiomeno modelo eparkei gia thn perigraphi tis
% palindromisis. 

% To proto dianisma (b1) periexei 31 syntelestes. 
% To deutero dianisma (b_final) periexei mono 7 mi midenikous
% synteletses pou simeni oti to modelo apolopoieitai kata poli.