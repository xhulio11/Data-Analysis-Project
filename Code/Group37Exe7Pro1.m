% Tzoulio Tzelilai - Nikos Tsibliaridis (9662-9652)
clear;
Data = readtable('ECDC-7Days-Testing.xlsx');
% Xora-> Islandia
% 1h Periodos -> 17/1/2021 (week 3 of 2021) kai 16 evdomades pio prin
% 2h Periodos -> 26/12/2021 (week 50 of 2021 ) kai 16 evdomades pio prin
pos_rates = Data.positivity_rate;

first_per = [0 0 3 0 0 3 3 0 3 3 19 14 0 3 3 0]';
secon_per = [0 3 3 0 3 0 0 0 3 0 0 0 0 0 0 0]';
first_per = flip(first_per);
secon_per = flip(secon_per);
n = size(first_per,1);

pos_first_period = Group37Exe7Fun3(Data,'2021-W50','Iceland');
pos_secon_period = Group37Exe7Fun3(Data,'2021-W03','Iceland');

r1 = Group37Exe7Fun2(pos_first_period,pos_rates,first_per);
r2 = Group37Exe7Fun2(pos_secon_period,pos_rates,secon_per);

[val1,R1] = max(r1);
[val2,R2] = max(r2);

fprintf('The comparison was made based on the multiple determination coefficient\n');
fprintf('-------------------------------------------------------------------------')
fprintf('For the first Period: Week 50th of 2021\n');
fprintf('R^2 = %f and we take it for %d weeks.\n',val1,R1);
fprintf('---------------------------------------\n')
fprintf('For the first Period: Week 3th of 2021\n');
fprintf('R^2 = %f and we take it for %d weeks.\n',val2,R2);


figure(1)
plot(first_per);
hold on
plot(secon_per);
title('Deaths per million in ICELAND');
xlabel('Week');
ylabel('Deaths')
legend('50th Week 2021','3d Week 2021');

% Gia tin Xora tis Islandias fainetai oti ta apotelesmata ton dio periodon
% den symfonoun. Gia tin proti periodo brhgame oti to grammiko modelo pros-
% armozetai kalytera gia 3 evdomades prin, eno gia tin deuteri periodo tin
% idia evdomada.
%. I alithia einai oti i Xora tis Islandias den exei tosous
% pollous thanatous (sinexomenes evdomades me 0 thanatous) opos fainetai 
% apo tin proteinomeni istoselida eno oi
% deiktes tis thetikotitas einai thetika kai sxetika ypsiloi eidika tin 50h evdomada kai prin. 
% Genika mporoume na symperanoume oti stin sygkekrimeni xora den fainetai
% na akouloutheitai kapoia grammiki sxesi stous thanatous se sxesi me ton
% deikti thetikotitas
