% Ypologizei ton deikti thetikotitas gia tin kathe hmera.

function [pos_rate] = Group37Exe8Fun2(index,new_cases,pcr,rapid)
    pos_rate = zeros(84,1);
    
     for i=index:-1:index -83 
        % If rapid test were done
        % Otherwise else
        if ~isnan(rapid(i)) && ~isnan(rapid(i-1)) && (pcr(i)-pcr(i-1) > 0)
            total_tests = pcr(i) + rapid(i) - pcr(i-1) - rapid(i-1);
            pos_rate(i-index+84) = (new_cases(i)/total_tests)*100;
        elseif (pcr(i) - pcr(i-1) > 0)
            total_tests = pcr(i) - pcr(i-1);
            pos_rate(i-index+84) = (new_cases(i)/total_tests)*100;
        elseif (pcr(i)-pcr(i-1) == 0)
            pos_rate(i-index+84) = 0;
        end
          
    end