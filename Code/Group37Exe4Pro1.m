% Tzoulio Tzelilai - Nikos Tsibliaridis (9662-9652)
clear;
% Importing the Table
Data = readtable('ECDC-7Days-Testing.xlsx');
[rows,columns] = size(Data);

% ICELAND
pos20 = Group37Exe4Fun2(Data,'Iceland','2020-W50');
pos21 = Group37Exe4Fun2(Data,'Iceland','2021-W50');

h1 = ttest2(pos20,pos21);
fprintf('Null Hypothesis for Iceland\n');
fprintf('h = %d\n',h1);
fprintf('---------------------------\n');

m1 = Group37Exe4Fun3(pos20,pos21,1000);
Group37Exe4Fun4(m1,'Iceland',1);

% HUNGARY
pos20 = Group37Exe4Fun2(Data,'Hungary','2020-W50');
pos21 = Group37Exe4Fun2(Data,'Hungary','2021-W50');

h1 = ttest2(pos20,pos21);
fprintf('Null Hypothesis for Hungary\n');
fprintf('h = %d\n',h1);
fprintf('---------------------------\n');

m1 = Group37Exe4Fun3(pos20,pos21,1000);
Group37Exe4Fun4(m1,'Hungary',2);

% Germany
pos20 = Group37Exe4Fun2(Data,'Germany','2020-W50');
pos21 = Group37Exe4Fun2(Data,'Germany','2021-W50');
fprintf('Null Hypothesis for Germany\n');
fprintf('h = %d\n',h1);
fprintf('---------------------------\n');
m1 = Group37Exe4Fun3(pos20,pos21,1000);
Group37Exe4Fun4(m1,'Germany',3);

% Ireland
pos20 = Group37Exe4Fun2(Data,'Ireland','2020-W50');
pos21 = Group37Exe4Fun2(Data,'Ireland','2021-W50');

h1 = ttest2(pos20,pos21);
fprintf('Null Hypothesis for Ireland\n');
fprintf('h = %d\n',h1);
fprintf('---------------------------\n');

m1 = Group37Exe4Fun3(pos20,pos21,1000);
Group37Exe4Fun4(m1,'Ireland',5);

% Italy
pos20 = Group37Exe4Fun2(Data,'Italy','2020-W50');
pos21 = Group37Exe4Fun2(Data,'Italy','2021-W50');

h1 = ttest2(pos20,pos21);
fprintf('Null Hypothesis for Italy\n');
fprintf('h = %d\n',h1);
fprintf('---------------------------\n');

m1 = Group37Exe4Fun3(pos20,pos21,1000);
Group37Exe4Fun4(m1,'Italy',6);

% ICELAND
% Opos fainetai apo to Instogramma, i diafora ton meson timon ton dio
% periodon (Briskontas to me tin methodo Bootstrap), akolouthei kanoniki
% katanomi me mesi timi 1,7. Sinepos oi deiktes thetikotitas diaferoun.

% GEITONES = HUNGARY, GERMANY,IRELAND,ITALY,
% Stis alles xores i diafora akolouthei kai pali kanoniki katanomi, alla oi
% diafores einai pio megales kai thetikes kata 10 peripou stin Irlandia kai
% kai Germania, kai 20 stin Ugaria.
% Endiaferon exei oti i diafora stin ITALIA
% einai arnitiki kata 11 peripou meso oro, pou simenei oti i katastasi
% veltiothike. Auto einai logiko kathos thimomaste oti i voria Italia stin arxi
% tis pandimias ypefere se terastio vathmo kai metrise polles apolies kathos.

