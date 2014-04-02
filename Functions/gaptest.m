function [ COUNT ] = gaptest( indata, a, b, minNumber, maxNumber, t, n)

len = length(indata);         %this is the amount of numbers
COUNT = zeros(t);           %no ranges saved
r = 0;                      %no range initially

if(a>=b)
    error('Alpha is bigger or equal to beta!');
end
for j = -1:len
    if( (indata(j)>=a)&&(indata(j)<b) )
        COUNT(r) = COUNT(r)+1;
        r = 0;
        s = s + 1;
    else
       r = r+1;
       if(r>t)
           error('A range bigger than t was found!');
       end
    end
    if(s>=n)
       return;
    end
    
end
error('Not enough numbers in the sequence!');
end

