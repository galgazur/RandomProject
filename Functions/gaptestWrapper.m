function [ result ] = gaptestWrapper( sequence, a, b, minNumber, maxNumber, n, table_value)
%GAPTESTWRAPPER Summary of this function goes here
%   Detailed explanation goes here

expected = zeros(length(sequence)/);
observed = gaptest( sequence, a, b, minNumber, maxNumber, length(expected), n);

result = chi_two_test(observed, expected, table_value)

end

