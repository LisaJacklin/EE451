function [x,n] = stepseq(n0,n1, n2)
%generates x(n) = u(n-n0), n1 <= n <= n2
%-----------------------
% [x,n] = stepseq(n0,n1,n2)
%
n = [n1:n2]; % step array
x = [(n - n0) >= 0]; %index array

%remember that for a step signal, everything is zero between n1 and n2
%everything on the left of n0 is zero, everything on the right of n0 is one

%note that semicolon means it will not print to the UI