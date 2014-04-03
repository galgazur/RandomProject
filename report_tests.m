addpath Functions;

lcg3000 = floor(lcg(10, 3000)*10+1);



%GAPTEST
gaptest = gaptestWrapper(lcg3000, 4, 5, min(lcg3000), max(lcg3000), 100, 500, 340);
if(gaptest==1)
    disp('Gap test determined that this sequence showed non-random patterns.');
else
    disp('Gap test determined that this sequence was random.');
end
disp(' ');







disp(poker_test(lcg3000, 1000));