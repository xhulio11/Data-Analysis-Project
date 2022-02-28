% Confidence Interval for positive rate of Greece using Bootstrap
function [result] = Group37Exe3Fun3(pos_Greece,pos_EE,M)
    [ci] = bootci(M,@mean,pos_Greece);
    
    if ci(1) <= pos_EE && pos_EE <= ci(2)
        result = 0;
    elseif (pos_EE < ci(1))
        result = pos_EE - ci(1);
    else 
        result = pos_EE - ci(2);
    end
 
    % Ean o deiktis tis EE einai entos tou diastimatos empistosinis tote
    % i diafora tous einai 0. Allios afairoume an einai apo kato, to kato
    % akro kai an einai apo pano to pano akro.
end

