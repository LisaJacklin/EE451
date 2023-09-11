function [y,n]=sigfold(x,n)
% y(n) = x(-n)
% --------
% [y,n]= sigfold(x,n)

n = -fliplr(n);
y = fliplr(x);
