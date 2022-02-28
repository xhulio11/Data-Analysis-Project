function [output] = Group37Exe5Fun4(alpha,pos_greece,pos_iceland,pos_ireland,pos_italy,pos_hungary,pos_germany)
    n = size(pos_greece,1);
    % Finding the corr for greece and every other country
    gre_ice = corrcoef(pos_greece,pos_iceland); r1 = gre_ice(1,2);
    gre_ire = corrcoef(pos_greece,pos_ireland); r2 = gre_ire(1,2);
    gre_ita = corrcoef(pos_greece,pos_italy); r3 = gre_ita(1,2);
    gre_hun = corrcoef(pos_greece,pos_hungary); r4 = gre_hun(1,2);
    gre_ger = corrcoef(pos_greece,pos_germany); r5 = gre_ger(1,2);

    z1 = 0.5*log((1+r1)/(1-r1));
    z2 = 0.5*log((1+r2)/(1-r2));
    z3 = 0.5*log((1+r3)/(1-r3));
    z4 = 0.5*log((1+r4)/(1-r4));
    z5 = 0.5*log((1+r5)/(1-r5));
    
    z1_low = z1 - norminv(1-alpha/2)*sqrt(1/(n-3));
    z1_up = z1 + norminv(1-alpha/2)*sqrt(1/(n-3));
    z2_low = z2 - norminv(1-alpha/2)*sqrt(1/(n-3));
    z2_up = z2 + norminv(1-alpha/2)*sqrt(1/(n-3));
    z3_low = z3 - norminv(1-alpha/2)*sqrt(1/(n-3));
    z3_up = z3 + norminv(1-alpha/2)*sqrt(1/(n-3));
    z4_low = z4 - norminv(1-alpha/2)*sqrt(1/(n-3));
    z4_up = z4 + norminv(1-alpha/2)*sqrt(1/(n-3));
    z5_low = z5 - norminv(1-alpha/2)*sqrt(1/(n-3));
    z5_up = z5 + norminv(1-alpha/2)*sqrt(1/(n-3));
    
    output = [z1_low z1_up;z2_low z2_up;z3_low z3_up;z4_low z4_up;z5_low z5_up];
    arr1 = tanh(output);
    
    fprintf('\nCoefficient\n');
    fprintf('Greece-Iceland: %f \n',r1);
    fprintf('Greece-Ireland: %f\n',r2);
    fprintf('Greece-Italy: %f \n',r3);
    fprintf('Greece-Hungary: %f\n',r4);
    fprintf('Greece-Germany: %f\n',r5);
    fprintf('-------------------------\n');
    
    fprintf('\nConfidece interval for Parametric Coefficient with alpha == %f\n',alpha);
    fprintf('Greece-Iceland: [%f %f]\n',arr1(1,1),arr1(1,2));
    fprintf('Greece-Ireland: [%f %f]\n',arr1(2,1),arr1(2,2));
    fprintf('Greece-Italy: [%f %f]\n',arr1(3,1),arr1(3,2));
    fprintf('Greece-Hungary: [%f %f]\n',arr1(4,1),arr1(4,2));
    fprintf('Greece-Germany: [%f %f]\n',arr1(5,1),arr1(5,2));
    fprintf('-------------------------\n');
end

