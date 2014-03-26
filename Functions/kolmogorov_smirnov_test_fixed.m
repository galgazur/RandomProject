function [ plus, minus ] = kolmogorov_smirnov_test_fixed( X_observations, a, b )
%KOLMOGOROV_SMIRNOV_TEST Summary of this function goes here
%   Detailed explanation goes here

F = @(x) (x-a)/(b-a);

X_sorted = sort(X_observations);
n = length(X_observations);

plus = 0;
minus = 0;
for j=1:n
    plustemp = sqrt(n) * (j/n - F(X_sorted(j)));
    if(plustemp>plus)
        plus = plustemp
    end
    
    minustemp = sqrt(n) * (F(X_sorted(j)) - (j-1)/n);
    if(minustemp<minus)
        minus = minustemp
    end
end


end

