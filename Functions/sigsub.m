function [y, n] = sigsub (x1, n1, x2, n2)
% y(n) = x1 (n) + x2(n)
% --------------------
% y is the sum of n, which incudes n1, n2
% x1 is the sequence over n1
% x2 is the sequence over n2
%

n = [min(min(n1), min(n2)): max(max(n1), max(n2))];
%this determines the min and max for all n
y1 = zeros(1, length(n)); y2 = y1;
y1(find( (n >= min(n1) & (n <= max(n2))) == 1)) = x1
y2(find( (n >= min(n1) & (n <= max(n2))) == 1)) = x2
%find here is allowing us to add x1 and x2 to a biger table that is y
y = y1 - y2

