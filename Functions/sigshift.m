function [y, n] = sigshift(x, m, k)
% y(n) = x(n + k)
% -------------------
% k is the shifting value
% single signal shift

n = m+k; y = x;