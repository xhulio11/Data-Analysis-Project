% This function Bootstraps the samples and returns the diff between means
function [m_diff] = Group37Exe4Fun3(pos20,pos21,M)
    m21 = bootstrp(M,@mean,pos21);
    m20 = bootstrp(M,@mean,pos20);
    m_diff = m21-m20;
end

