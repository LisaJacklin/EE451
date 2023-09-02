function [y, n] = sigfold (x, n)
% y(n) = x (-n)
% --------------------------
% This flips the index values of n
%

n = -fliplr(n);
y = fliplr(x);


