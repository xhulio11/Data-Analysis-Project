% This function calculates the positive rate for a week in Greece

function [pos_rate] = Group37Exe3Fun2(index,new_cases,pcr,rapid)
    pos_rate = zeros(7,1);
    
     for i=index:-1:index - 6
        % If rapid test were done
        % Otherwise else
        if ~isnan(rapid(i)) && ~isnan(rapid(i-1)) && (pcr(i)-pcr(i-1) > 0)
            total_tests = pcr(i) + rapid(i) - pcr(i-1) - rapid(i-1);
            pos_rate(i-index+7) = (new_cases(i)/total_tests)*100;
        elseif (pcr(i) - pcr(i-1) > 0)
            total_tests = pcr(i) - pcr(i-1);
            pos_rate(i-index+7) = (new_cases(i)/total_tests)*100;
        elseif (pcr(i)-pcr(i-1) == 0)
            pos_rate(i-index+7) = 0;
        end
          
    end
    
end

