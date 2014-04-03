function [ result ] = gaptestWrapper( sequence, a, b, minNumber, maxNumber, n, t, table_value)
%GAPTESTWRAPPER Summary of this function goes here
%   Detailed explanation goes here

expected = zeros(1,t);
interval = maxNumber-minNumber;
p = (b-a)/interval;

for i=0:(t-1)
    if(i>0)
        num = n*p*((1-p)^i);
    else
        num = n*p;
    end
    expected(i+1) = num;
end

observed = gaptest( sequence, a, b, minNumber, maxNumber, t, n);

result = chi_two_test(observed, expected, table_value)

end