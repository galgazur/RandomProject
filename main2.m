AllNumbers = linearCongruency(100, 71, 1, 0, 100);

numbersLength = length(AllNumbers);
maxValue = 100;

%--Clean chi_two---
expected = zeros(1,maxValue);
expected = expected + (numbersLength/maxValue);

observed = zeros(1,maxValue);
    for i=1:numbersLength
        n = AllNumbers(i);
        observed(n+1) = observed(n+1)+1;
    end

disp(chi_two_test(observed, expected, maxValue));

%--Poker_test--

disp(poker_test(AllNumbers));
