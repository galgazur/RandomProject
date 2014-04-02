function [ output ] = coupon_test( input, maxValue)

%d=största tal i sekvensen
%s=antal "kupongsekvenser" hittade
%r=??
%q=antalet kuponger hittade hittils
%n=antal "kupongsekvenser" totalt
%t=största längden vi räknar med(defineras godtyckligt?)
d = 100;
t = 120;
s = 0;
n = 3;
count = zeros(t);

while s < n
    occurs = zeros(d);
    q = 0;
    r = 0;
    while q < d
        j = 0;
        for i=1:length(input)
            j=j+1;
            r=r+1;
            if occurs(input(j)) == 0
                break;
            end
        end
        
        occurs(input(j)) = 1;
        q=q+1;
    end
    
    if r >= t
        count(t)=count(t)+1;
    else
        count(r)=count(r)+1;
    end
        s=s+1;
end


%preparing the expected-array
expected = zeros(t);
for r=d:t-1
    div = factorial(d)/d.^r;
    st = stirling(r-1, d-1);
    expected(r) = div*st;    
end
expected(t) = 1-((factorial(d)/d.^(t-1))*stirling(t-1, d));

output = chi_two_test(count, expected, n);
end

