function [y,n]=sigadd(x1,n1,x2,n2)
% y(n) = x1(n) + x2(n)
% --------
% y is the sum over n, which includes n1, n2
% x1 is the sequence over n1
% x2 is the sequence over n2

n = min(min(n1),min(n2)):max(max(n1),max(n2))
y1 = zeros(1,length(n)); y2 = y1;
y1(find( (n >= min(n1) & (n <=max(n1))) == 1)) = x1
y2(find( (n >= min(n2) & (n <=max(n2))) == 1)) = x2
y = y1 + y2
