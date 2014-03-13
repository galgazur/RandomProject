function [ result ] = isOptimalParams( modulus, multiplier, increment)
%ISOPTIMALPARAMS Summary of this function goes here
%   Detailed explanation goes here

result = true;
%THEOREM A
%A PERIOD OF #modulus IFF:

%INCREMENT IS COPRIME WITH MODULUS
if(gcd(modulus, increment)>1)
    result = false;
    %disp('1 FAILED');
    return
end

%MULTIPLIER-1 IS A MULTIPLE OF EVERY PRIME NUMBER MODULUS IS DIVIDED BY
for p = primes(modulus)
    if(gcd(p,modulus)>1)
        if(mod(multiplier-1,p)>0)
            result = false;
            %disp('2 FAILED');
            return
        end
    end
end

if(mod(modulus,4)==4)
    if((mod(multiplier-1,4)~=4))
        result = false;
        %disp('3 FAILED');
    end
end



return
