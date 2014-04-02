function [ output] = stirling(n, k)
%STIRLING Summary of this function goes here

if n == k
    output = 1;
elseif k == 1
    output = 1;
else
   div = 1/factorial(k);
   sum = 0;
   for i=0:k-1
      a = (-1).^(k-i)*nchoosek(k, i)*i.^n;
      sum=sum+a;
   end
   output = div*sum;
end

end

