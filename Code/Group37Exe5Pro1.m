% Tzoulio Tzelilai - Nikos Tsibliaridis (9662-9652)
clear;

Data = readtable('ECDC-7Days-Testing.xlsx');
% Taking the positive rate for the given dates
pos_greece = Group37Exe5Fun2(Data,'Greece','2021-W50');
pos_iceland = Group37Exe5Fun2(Data,'Iceland','2021-W50');
pos_ireland = Group37Exe5Fun2(Data,'Ireland','2021-W50');
pos_italy = Group37Exe5Fun2(Data,'Italy','2021-W50');
pos_hungary = Group37Exe5Fun2(Data,'Hungary','2021-W50');
pos_germany = Group37Exe5Fun2(Data,'Germany','2021-W50');

% Ploting the Data
Group37Exe5Fun3(pos_greece,pos_iceland,pos_ireland,pos_italy,pos_hungary,pos_germany);

% Finding the corr for greece and every other country
arr1 = Group37Exe5Fun4(0.05,pos_greece,pos_iceland,pos_ireland,pos_italy,pos_hungary,pos_germany);
arr2 = Group37Exe5Fun4(0.01,pos_greece,pos_iceland,pos_ireland,pos_italy,pos_hungary,pos_germany);

fprintf('\nConfidece interval for Bootstrap Coefficient with alpha == 0.05\n');
x1 = Group37Exe5Fun5(pos_greece,pos_iceland,0.05,'Iceland',1000);
x2 = Group37Exe5Fun5(pos_greece,pos_ireland,0.05,'Ireland',1000);
x3 = Group37Exe5Fun5(pos_greece,pos_italy,0.05,'Italy',1000);
x4 = Group37Exe5Fun5(pos_greece,pos_hungary,0.05,'Hungary',1000);
x5 = Group37Exe5Fun5(pos_greece,pos_germany,0.05,'Germany',1000);
fprintf('-------------------------------------------------------------------\n');


fprintf('\nConfidece interval for Bootstrap Coefficient with alpha == 0.01\n');
x1 = Group37Exe5Fun5(pos_greece,pos_iceland,0.01,'Iceland',1000);
x2 = Group37Exe5Fun5(pos_greece,pos_ireland,0.01,'Ireland',1000);
x3 = Group37Exe5Fun5(pos_greece,pos_italy,0.01,'Italy',1000);
x4 = Group37Exe5Fun5(pos_greece,pos_hungary,0.01,'Hungary',1000);
x5 = Group37Exe5Fun5(pos_greece,pos_germany,0.01,'Germany',1000);
fprintf('-------------------------------------------------------------------\n');

% Fainetai oti i megalyteri sisxetisi vrisketai metaksi tis Elladas kai
% Ougarias (0.8). Ta diastimata empistosinis apo to parametriko elexo einai
% ta pio stena metaksi auton ton xoron. 

% Me tin methodo tis tixaias antimetathesis, efoson ta deigmata proerxontai
% apo ton idio plithismo, tha exoun tin idia katanomi. Auto fainetai apo ta
% diastimata empistosynis tou syntelesti sysxetisis kathos to pano kai kato
% akro einai symmetriko pros to 0.