function [ result ] = ks_test( observations )
%KS_TEST Summary of this function goes here
%   Detailed explanation goes here

ks_statistic = kolmogorov_smirnov_test_fixed(observations, min(observations), max(observations));
ks_critical = 1.22/sqrt(length(observations));

result = 0;
if(ks_statistic>ks_critical)
    result = 1;
end

end

