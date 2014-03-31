function [ output_args ] = coupon_test( input, maxValue)

%d=största tal i sekvensen
%s=antal kuponger??
%r=??
%q=antalet kuponger hittade hittils
%t=största längden vi räknar med(defineras godtyckligt?)
d = 100;
t = d/maxValue;
q = 0;
s = 0;
count = zeros(t);

while s < n
    occurs = zeros(d);
    j = 0;
    r = 0;
    while q < d
        
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
        end2
        s=s+1;
    end
end
end

