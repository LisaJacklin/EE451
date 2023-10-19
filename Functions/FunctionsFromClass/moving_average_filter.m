function [b,a,wl] = moving_average_filter(N)
% function [b, a, wl] = moving_average_filter(N)
% b, a are the same corresponding arguments
% to the freqz function
% wl is the frequency for the "N moving average filter"
% that has the 3 dB drop
% N is the number of input values used for the 
% moving average filter
b = 1/N * ones(1,N);
a = [1]; % the moving average filter has only y(n)

    function hw = cutoff(w)
    % function hw = cutoffMovingAverage(w)
    % hw is the value of |H(wl)| - |H(0)|/sqrt(2),
    % H the transfer function for the moving average filter
    % the value of wl that makes hw 0 is the cutoff 
    % frequency for the moving average
    
    n = 1:N;
    h = exp(-1i * (n-1) * w);
    hw = sum(h)/N;
    hw = abs(hw) - 1/sqrt(2);
    end

wl = fzero(@cutoff,[0 2*pi/N]);
end