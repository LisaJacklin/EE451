function [y, n] = sigshift(x, m, k)
% y(n) = x(n + k)
% -------------------
% k is the shifting value
% single signal shift

if k > 0
    disp("positive")
    n = n(1):n(end)+k;
    y = [zeros(1,k) x];
else
    disp("negative")
    n = n(1)+k:n(end);
    y = [x zeros(1,abs(k))]; % abs is for absolute value of (k) because quantity can never be (-ve) negative %
end