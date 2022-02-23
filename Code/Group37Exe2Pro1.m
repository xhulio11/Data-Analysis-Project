clear;
% Importing the Table
Data = readtable('ECDC-7Days-Testing.xlsx');
[rows,columns] = size(Data);

% Two arrays with maximum positive rate for 2021 and 2020 45th week.
% Group37Exel1Pro2 takes Data and the week and returns the array
max_pos_2021 = Group37Exe1Pro2(Data,'2021-W45');
max_pos_2020 = Group37Exe1Pro2(Data,'2020-W45');
max_pos_2021 = sort(max_pos_2021);
max_pos_2020 = sort(max_pos_2020);
figure(1)
h21 = cdfplot(max_pos_2021);
figure(2)
h20 = cdfplot(max_pos_2020);

y20 = get(h20,'YData');
disp(y20);