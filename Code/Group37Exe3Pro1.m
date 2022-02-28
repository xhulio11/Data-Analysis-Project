% Tzoulio Tzelilai - Nikos Tsibliaridis (9662-9652)
clear;
Data = readtable('FullEodyData.xlsx');
% Initializing 
Date = Data.Date;
New_cases = Data.NewCases;
PCR = Data.PCR_Tests;
Rapid = Data.Rapid_Tests;

% Apo to arxeio ECDC-7Days-Testing fainetai oti i Xora A = Islandia parousiazei
% Megisto deikti thetikotitas tin 13h evdomada tou 2020. Logo tou auti i
% evdomada einai arketa noris pirame tin deuteri korifosi pou itan stin 50h
% evdomada tou 2021 -> 641 stili sto arxeio FullEodyData.xlsx
% Index = 641-1 = 640 

pos_EE = [2.2;2.5;2.8;3.7;4.5;4.9;5.5;6;6;6.2;6;5.6];
n = size(pos_EE);
s = New_cases(164);
index = 640;
result = zeros(12,1);
temp = zeros(7,12);

% Calling Group37Exe3Pro2 to calculate positive rate for 7 continues days
% Calling Group37Exe3Pro3 to find confidece interval for positive rate

for i=1:12
    pos_rate = Group37Exe3Fun2(index,New_cases,PCR,Rapid);
    temp(:,i) = pos_rate;
    [result(i)] = Group37Exe3Fun3(pos_rate,pos_EE(i),1000);
    index = index - 7;
end
    
greek_week_pos_rate = mean(temp);

figure(1)
plot(result);
% Ean i EE einai ektos diastimatos empistosinis fainetai i diafora sto
% grafima. Allios, ean einai entos emfanizoume sto grafima to 0
title('Difference between EE and Greece')
xlabel('Week');
ylabel('Difference');
hold off

figure(2)
plot(flip(greek_week_pos_rate'));
hold on 
plot(pos_EE);
title('Positive Rate for every week between EE - Greece')
xlabel('Week');
ylabel('Week Positive Rate Average');
legend('Greece','EE');

% Apo to proto diagramma fainetai oti o deiktis thetikotitas tis evropaikis
% Enosis einai stin arxi mesa sta oria tis elladas, alla meta ginetai poli
% megalyteros.

% Apo to deutero diagramma fainetai oti h ellada ta pigaine kalitera ston
% deikti thetikotitas kathos pernouse o kairos se sxesi me tin ipolipi
% Evropi apo tin 48h evdomada kai 12 evdomades meta
    
    
    
    