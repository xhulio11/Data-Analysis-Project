% This function uses random permutation to find confidece interval for
% coofficient.
function [output] = Group37Exe5Fun5(pos_greece,pos_other,alpha,name,M)
    Sample = [pos_greece;pos_other];
    n = size(Sample,1);
    vec = [1:n];
    temp = zeros(M,1);
    for i=1:M
        index = randperm(n,n/2);
        x1 = Sample(index);
        x2 = Sample(setdiff(vec,index));
        gre_other = corrcoef(x1,x2); r = gre_other(1,2);
        temp(i) = r;
    end
    k = floor((M+1)*alpha/2);
    temp = sort(temp);
    output = [temp(k),temp(M+1-k)];
    fprintf('Greece-%s: [%f %f]\n',name,output(1),output(2));
end

