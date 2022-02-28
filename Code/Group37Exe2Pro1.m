% Tzoulio Tzelilai - Nikos Tsibliaridis (9662-9652)
clear;
% Importing the Table
Data = readtable('ECDC-7Days-Testing.xlsx');
[rows,columns] = size(Data);

% Two arrays with maximum positive rate for 2021 and 2020 45th week.
% Group37Exel1Pro2 takes Data and the week and returns the array
max_pos_2021 = Group37Exe1Fun2(Data,'2021-W45');
max_pos_2020 = Group37Exe1Fun2(Data,'2020-W45');
total_sample = [max_pos_2021;max_pos_2020];

[results,p] = Group37Exe2Fun2(total_sample,1000);

fprintf('------------------------------------------------------\n');
fprintf('1000 Boostrap samples for positive rate in 2020-2021.\n');
fprintf('The Hypothesis: The two samples are the same.\n');
fprintf('Percentage of correctness = %f.\n',p);
fprintf('------------------------------------------------------\n');