disp('Generera slumpmassiga tal');

addpath Functions;


disp(linearCongruency(100,97,97,97,200));

X = 99*99*99;
AllNumbers = ones(X,20);

modulus = 100;
for a=1:99
    %disp(a);
    for b=1:99
        if(isOptimalParams(100,a,b))
            disp(['Optimal params a:',num2str(a),' b:',num2str(b)])
        end
        for c=1:99
            AllNumbers((a-1)*99*99 + (b-1)*99 + c,:) = linearCongruency(100,a,b,c,20)+1;
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


