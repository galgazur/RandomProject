iSum = 0;
cSum = 0;
format longeng;
tic;
time1 = 0;
time2 = 0;
randomPrevious = 0;

for i=0:(2^32-1)
    x = i/(2^32-1)*100;
    clc;
    
    if(mod(i,1000)==0)
        time1=time2;
        time2 = toc;
        
        secsleft = ((2^32)/1000)*(time2-time1);
        secs = mod(secsleft,60);
        mins = mod(secsleft-secs, 60*60)/60;
        hours = mod(secsleft-mins, 60*60*60)/(60*60);
        days = mod(secsleft-hours, 60*60*60*24)/(60*60*60);
    end
    
    
    
    disp(['Average time per 1000 operations: ',num2str(time2-time1)]);
    disp(['Time left- Days: '   , num2str(days), ...
                        '  hours: ' , num2str(hours), ...
                        '  minutes: ' , num2str(mins), ...
                        '  seconds: ' , num2str(secs)]);
	disp(['Total left; ', num2str(secsleft)]);
    disp(['Done: ', num2str(x), '%']);
    
    random = linearCongruency(2^32, 22695477, 1, 0, 1);
    
    cSum = cSum + random;
    iSum = iSum + i;
    randomPrevious = random;
end

disp(['The control sum was: ', num2str(iSum),''])
disp(['The randomized sum was: ', num2str(iSum),''])