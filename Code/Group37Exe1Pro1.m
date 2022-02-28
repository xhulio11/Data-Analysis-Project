% Tzoulio Tzelilai - Nikos Tsibliaridis (9662-9652)
clear;
% Importing the Table
Data = readtable('ECDC-7Days-Testing.xlsx');
[rows,columns] = size(Data);

% Two arrays with maximum positive rate for 2021 and 2020 45th week.
% Group37Exel1Pro2 takes Data and the week and returns the array
max_pos_2021 = Group37Exe1Fun2(Data,'2021-W45');
max_pos_2020 = Group37Exe1Fun2(Data,'2020-W45');


% Ploting 
figure(1)
h = histfit(max_pos_2021,size(max_pos_2021,1),'normal');
hold on
histfit(max_pos_2021,size(max_pos_2021,1),'exponential')
h(2).Color = [.2 .2 .2];
xlabel('Positivity Rate')
ylabel('Frequency')
title('2021')

figure(2)
g = histfit(max_pos_2020,size(max_pos_2020,1),'normal');
hold on 
histfit(max_pos_2020,size(max_pos_2020,1),'exponential')
g(2).Color = [.2 .2 .2];
xlabel('Positivity Rate')
ylabel('Frequency')
title('2020')

% Apo ta parapano grafimata den fainetai o megistos deiktis thetikotitas 
% stis ebdomades pou eksetastikan na akolouthei kapoia gnosti katanomi 






        
        

    
