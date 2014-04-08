addpath Functions;


seed = 999;



mtg1K = mersenne_twister(seed,1000);
mtg10K = mersenne_twister(seed,10000);
mtg100K = mersenne_twister(seed,100000);
mtg1000K = mersenne_twister(seed,1000000);

lcg1K = lcg(seed, 1000);
lcg10K = lcg(seed, 10000);
lcg100K = lcg(seed, 100000);
lcg1000K = lcg(seed, 1000000);

for i=1:8

    
    
end

lcg3000raw = lcg(14, 3000);
lcg3000f = lcg3000raw*10;
lcg3000 = floor(lcg3000raw*10+1);
lcg3000_100 = floor(lcg3000raw*100+1);
lcg3000_1000 = floor(lcg3000raw*1000+1);

mtg3000raw = mersenne_twister(5555,3000);
mtg3000f = mtg3000raw*10;
mtg3000 = floor(mtg3000raw*10+1);


%GAP TEST
gaptest = gaptestWrapper(lcg3000, 0.5, 1.5, min(lcg3000), max(lcg3000), 100, 500, 340);
if(gaptest==1)
    disp('Gap test determined that this sequence showed non-random patterns.');
else
    disp('Gap test determined that this sequence was random.');
end
disp(' ');


%KOLMOGOROV-SMIRNOV TEST
gaptest = ks_test(mtg3000f);

if(gaptest==1)
    disp('KS test determined that this sequence showed non-random patterns.');
else
    disp('KS test determined that this sequence was random.');
end
disp(' ');


%CHI-TWO TEST
%10 nummer/grupper = 18
%100 nummer/grupper = 124
disp(chi_two_wrapper(lcg3000_100, 124));

%POKER TEST
disp(poker_test(lcg3000_100, 100));

%COUPON TEST
%50 grupper = 68
disp(coupon_test(lcg3000, 10, 20, 68));
