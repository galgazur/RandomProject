addpath Functions;


lcg3000 = floor(lcg(10, 3000)*100+1);



%GAPTEST
% gaptest = gaptestWrapper(lcg3000, 5, 5, min(lcg3000), max(lcg3000), 100, expected, table_value);
% disp('Gap test determined that this sequence');
% if(gaptest==1)
%     disp('showed non-random patterns.');
% else
%     disp('was random.');
% end
% disp('');







%disp(poker_test(lcg3000, 100));
disp(coupon_test(lcg3000, 100, 20, 3000));