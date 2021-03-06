function [ output ] = chi_two_wrapper( input, groups, tableValue )
%CHI_TWO_WRAPPER Summary of this function goes here
disp('Clean chi_two_test');
numbersLength = length(input);
%maxValue = max(input);
%minValue = min(input);
%groups = maxValue-minValue+1;

expected = zeros(1,groups);
expected = expected + (numbersLength/groups);

observed = zeros(1,groups);
for i=1:numbersLength
    n = input(i); 
    observed(n) = observed(n)+1;
end
%disp(observed);
%disp(expected);
output = chi_two_test(observed, expected, tableValue);

end

