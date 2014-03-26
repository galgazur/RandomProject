function [ plus, minus ] = kolmogorov_smirnov_test( X_observations, Fx_Values )
%KOLMOGOROV_SMIRNOV_TEST Summary of this function goes here
%   Detailed explanation goes here

X_sorted = sort(X_observations);
n = length(X_observations);

j1 = find(X_sorted==max(X_sorted),1);
j2 = find(X_observations==max(X_observations));

plus = sqrt(n) * (j1/n - Fx_Values(j2));
minus = sqrt(n) * (Fx_Values(j2) - (j1-1)/n);

end

