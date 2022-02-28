% This function ueses kstest (Komogorov-Smirnov) to test if the two samples
% come from the same distribution. It bootstraps M times, creates two 
% different samples without repositioning from the bootstrap sample, and 
%applies the ktest for each one of them.

function [results,persentage] = Group37Exe2Fun2(Sample,M)
    n = size(Sample,1);
    results = zeros(M,1);
    % This will count Null Hypothesis -> They come from the same distri
    counter = 0;
    
    vec = [1:n];
    
    for i=1:M
        index = randperm(n,n/2);
        x1 = Sample(index);
        x2 = Sample(setdiff(vec,index));
        results(i) = kstest2(x1,x2);
        if results(i) == 0
            counter = counter + 1;
        end    
    end
    % success
    persentage = (counter/M)*100;
    
end

