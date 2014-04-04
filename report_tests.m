addpath Functions;

lcg3000raw = lcg(14, 3000);
lcg3000f = lcg3000raw*10;
lcg3000 = floor(lcg3000raw*10+1);



%GAP TEST
gaptest = gaptestWrapper(lcg3000, 4, 5, min(lcg3000), max(lcg3000), 100, 500, 340);
if(gaptest==1)
    disp('Gap test determined that this sequence showed non-random patterns.');
else
    disp('Gap test determined that this sequence was random.');
end
disp(' ');


%KOLMOGOROV-SMIRNOV TEST
gaptest = ks_test(lcg3000f);

if(gaptest==1)
    disp('KS test determined that this sequence showed non-random patterns.');
else
    disp('KS test determined that this sequence was random.');
end
disp(' ');








disp(poker_test(lcg3000, 10));

%50 grupper = 68
disp(coupon_test(lcg3000, 10, 20, 68));
