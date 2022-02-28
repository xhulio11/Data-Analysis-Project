% Tzoulio Tzelilai - Nikos Tsibliaridis (9662-9652)
clear;

Data = readtable('ECDC-7Days-Testing.xlsx');
% Taking the positive rate for the given dates
% Countries the the maximum Cooficient is: Hungary = 0.83 , Ireland = 0.76
pos_greece = Group37Exe5Fun2(Data,'Greece','2021-W50');
pos_ireland = Group37Exe5Fun2(Data,'Ireland','2021-W50');
pos_hungary = Group37Exe5Fun2(Data,'Hungary','2021-W50');

n = size(pos_greece,1);
coff = zeros(1000,1);
x1 = [1:n];

sample_1 = zeros(1000,1);
sample_2 = zeros(1000,1);
for i=1:1000
    x = unidrnd(n,n,1);
    arr1 = corrcoef(pos_greece(x),pos_hungary(x));
    arr2 = corrcoef(pos_greece(x),pos_ireland(x));
    coff(i) = arr1(1,2) - arr2(1,2);
end
sort(coff);
alpha = 0.05;
k = floor((1001)*alpha/2);
ci = [coff(k), coff(1001-k)];
fprintf('Confidence Interval for difference between two Correlation is:\n');
fprintf('[%f, %f]\n',ci(1),ci(2));

figure(1);
histogram(coff);
xlabel('Diff between correlations');
ylabel('Frequency');
hold on 
line([mean(coff) mean(coff)],[0,200],'LineWidth',2,'Color','r');
hold off

%Toso apo to grafima oso kai apo to diastima empistosynis fainetai oti i
%diafora metaksi ton synteleston sysxetisis den einai megali.
    
    
    
    