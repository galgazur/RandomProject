addpath Functions;

lcg1k_10 = floor(lcg(1, 1000)*10+1);
lcg100k_10 = floor(lcg(1, 100000)*10+1);
lcg10k_100 = floor(lcg(1, 10000)*100+1);
lcg100k_100 = floor(lcg(1, 100000)*100+1);
lcg100k_1000 = floor(lcg(1, 100000)*1000+1);
lcg1m_1000 = floor(lcg(1, 1000000)*1000+1);

disp(chi_two_wrapper(lcg1k_10, 10, 18));
disp(poker_test(lcg1k_10, 10));
disp(coupon_test(lcg1k_10, 10, 30, 68));
disp(serial_test(lcg1k_10, 124));
disp('NEXT ROUND');
disp(chi_two_wrapper(lcg100k_10, 10, 18));
disp(poker_test(lcg100k_10, 10));
disp(coupon_test(lcg100k_10, 10, 30, 68));
disp(serial_test(lcg100k_10, 124));
disp('NEXT ROUND');
disp(chi_two_wrapper(lcg10k_100, 100, 124));
disp(poker_test(lcg10k_100, 100));
%disp(coupon_test(lcg100k_100, 100, 10, 553));
disp(serial_test(lcg10k_100, 36028));
disp('NEXT ROUND');
disp(chi_two_wrapper(lcg100k_100, 100, 124));
disp(poker_test(lcg100k_100, 100));
%disp(coupon_test(lcg100k_100, 100, 10, 553));
disp(serial_test(lcg100k_100, 36028));
disp('NEXT ROUND');
disp(chi_two_wrapper(lcg100k_1000, 1000, 1075));
disp(poker_test(lcg100k_1000, 1000));
disp('NEXT ROUND');
disp(chi_two_wrapper(lcg1m_1000, 1000, 1075));
disp(poker_test(lcg1m_1000, 1000));


