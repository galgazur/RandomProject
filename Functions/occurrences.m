function [ out ] = occurrences( array )
%OCCURRENCES Summary of this function goes here
%   Detailed explanation goes here

    n = max(array);
    out = zeros(1,n);
    for i=1:length(array)
        out(array(i)) = out(array(i)) + 1;
    end

end

