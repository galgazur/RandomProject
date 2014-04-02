function [ output ] = chi_two_test( observed, expected, groups )
    %CHI_TWO_TEST Summary of this function goes here
    
    chi_array = zeros(1, groups);
    %chi_array2 = zeros(1, max_value);
    for i=1:groups
        a = (observed(i)-expected(i)).^2;
        chi_array(i) = a/expected(i);

    end
    %chi2gof_decision = chi2gof(input)
    
    chi_sum = sum(chi_array);
    chi_dist = 124; %taken from chi-2-table
    if chi_sum < chi_dist
        decision = 0;
    else
        decision = 1;
    end
    
    output = decision;

end

