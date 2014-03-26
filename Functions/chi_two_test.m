function [ output ] = chi_two_test( input )
    %CHI_TWO_TEST Summary of this function goes here

    %length = size(input);
    max_value = 100;
    length = 100;
    expected = zeros(1,max_value)+(length/max_value);
    observed = zeros(1,max_value);

    for i=1:length
        n = input(i);
        observed(n) = observed(n)+1;
    end
    
    chi_array = zeros(1, max_value);
    %chi_array2 = zeros(1, max_value);
    for i=1:max_value
        a = (observed(i)-expected(i)).^2;
        chi_array(i) = a/expected(i);

    end
    chi_dec = chi2gof(chi_array);
    disp(chi_dec);
    
    chi_sum = sum(chi_array);
    
    %chi = chi2cdf(chi_sum,99);
    %disp(chi);
    
    output = chi_sum;

end

