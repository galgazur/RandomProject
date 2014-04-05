function [ sequence ] = mersenne_twister( seed, length )
%MERSENNE_TWISTER Summary of this function goes here
%   Detailed explanation goes here



 % Create a length 624 array to store the state of the generator
 %int[0..623] MT
 %int index = 0
sequence = zeros(1,length);
MT = zeros(1,624);
index = 0;

MT(1,0+1) = seed;


 % Initialize the generator from a seed
for i = 1:623
    
    a = MT(i-1+1);
    b = fix(bitsra(a,30)); %right shift by 30 bits()
    c = bitxor(a,b);        %MT[i-1] xor ()
    d = 1812433253 * (c) + i;
    e = getLastBits(d,32); %last 32 bits of()
    
    MT(1,i+1) = e;
    
end
 

 
 
 % Extract a tempered pseudorandom number based on the index-th value,
 % calling generate_numbers() every 624 numbers
for seqIndex = 1:length
     if (index == 1)
        for i=0:623
            x = MT(mod(i+1,624)+1);
            y = bitand(MT(i+1),hex2dec('80000000')+bitand(x,hex2dec('7fffffff')));
            MT(i+1) = bitxor(MT(mod(i+397,624)+1),fix(bitsra(y,1)));
            if(mod(y,2)~=0)
                MT(i+1) = bitxor(MT(i+1),2567483615);
            end
        end
     end
     
     
    
     %kan vara bitsrl och bitsll kanske!
     
     y = MT(index+1);
     y = bitxor(y, fix(bitsra(y,11))); %
     y = bitxor(y, bitand(bitsll(y,7),2636928640)); % 0x9d2c5680
     y = bitxor(y, bitand(bitsll(y,15),4022730752)); % 0xefc60000
     y = bitxor(y, fix(bitsra(y,18)));

     index = mod((index + 1), 624);
     sequence(seqIndex) = y/(2^32);
end
 
 
 










end

