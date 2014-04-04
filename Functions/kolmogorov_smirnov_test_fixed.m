function [ d ] = kolmogorov_smirnov_test_fixed( X_observations, a, b )
%KOLMOGOROV_SMIRNOV_TEST Summary of this function goes here
%   Detailed explanation goes here

F = @(x) (x-a)/(b-a);

X_sorted = sort(X_observations);
n = length(X_observations);

d = 0;
plus = 0;
minus = 0;

data = zeros(2,n);

for j=1:n
    %temp = sqrt(n) * abs((j/n - F(X_sorted(j))));
    
    data(1,j) = X_sorted(j)/(b-a);
    data(2,j) = j/n;   
    
    val = (X_sorted(j)/(b-a)) - F(X_sorted(j));
    temp = sqrt(n) * abs(val);
    if(d<temp)
        d=temp;
    end
    
    plustemp = sqrt(n) * (j/n - F(X_sorted(j)));
    if(plustemp>plus)
        plus = plustemp;
    end
    
    minustemp = sqrt(n) * (F(X_sorted(j)) - (j-1)/n);
    if(minustemp<minus)
        minus = minustemp;
    end
end

d = d/(b-a);

disp('d:');
disp(d);

%disp(data);
hold on
plot(data(1,:),'b');
plot(data(2,:),'r');
hold off

end

