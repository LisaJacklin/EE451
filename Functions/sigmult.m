function [y, n] = sigmult(x1, n1, x2, n2)
% y(n) = x1(n) * x2(n)
% ---------------------
% y is the product of n including n1 and n2
% x1 is the sequence over n1
% x2 is the sequence over n2

%first finding the range of the each signal
n = [min(min(n1), min(n2)): max(max(n1), max(n2))];
%then finding the length of each signal itself
y1 = zeros(1, length(n)); y2 = y1;

%now we need to find a0nd multiply each
y1(find(( n >= min(n1)) & (n <= max(n2)) == 1)) = x1;
y2(find(( n >= min(n1)) & (n <= max(n2)) == 1)) = x2;

%now to multiply these two together
y = y1 .* y2;