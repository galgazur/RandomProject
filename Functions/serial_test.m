function [ result ] = serial_test( sequence, table_value)
%SERIAL_TEST Summary of this function goes here
%   Detailed explanation goes here


d = max(sequence);
n = length(sequence)/2;


expected = zeros(1,d^2)+((1/d^2)*n);


observed = zeros(1,d^2);

for j=1:n
    q = sequence(2*j-1);
    r = sequence(2*j);
    
    index = (q-1)*d+r;
    observed(index) = observed(index) + 1;
end

result = chi_two_test(observed, expected, table_value);
end
