disp('Generera slumpmassiga tal');

addpath Functions;

X = 99*99*99;
AllNumbers = ones(X,100);

modulus = 100;
for a=1:99
    %disp(a);
    for b=1:99
        if(isOptimalParams(100,a,b))
            disp(['Optimal for modulus:',num2str(modulus),' params multiplier:',num2str(a),' increment:',num2str(b)])
        end
        for c=1:99
            AllNumbers((a-1)*99*99 + (b-1)*99 + c,:) = linearCongruency(100,a,b,c,100)+1;
        end
    end
end
    
Occurrences = zeros(1,100);
for y=1:X
    for z=1:20
        p = AllNumbers(y,z);
        Occurrences(p) = Occurrences(p)+1;
    end
end
    
plot(1:100,Occurrences);


