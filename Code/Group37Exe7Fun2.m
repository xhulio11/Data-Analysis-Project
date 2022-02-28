function [r] = Group37Exe7Fun2(x,pos_rates,deaths)
    r = zeros(5,1);
    
    for i=1:5
        array_rates = pos_rates(x-16-i:x-i-1);
        
        sxy = corr(array_rates,deaths);
        sx = var(array_rates);
        b1 = sxy/sx;
        b0 = mean(deaths)-b1*mean(array_rates);
        yfit = b0 + b1*array_rates;
        e = deaths - yfit;
        
        temp1 = sum(e.^2);
        temp2 = sum((deaths - mean(deaths)).^2);
        r(i) = 1 - temp1/temp2;
    end
end

