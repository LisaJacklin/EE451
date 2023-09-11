function[x, n] = impseq(n0, n1,n2) 
%note that this is an impuse sequence
%generate x(n) = delta (n-n0), n1 <= n <= n2
% -------------------
% [x,n} = impseq(n0,n1,n2)
%
n = [n1:n2]; %impuse array
x = [(n - n0) == 0] %step array

%think of x here as an assert... it has to be one or zero
%because it is being done on an array element, it will be a row of 0s or 1s
%dependent on each individual value.

%note that in order to read this file through the help command,
%we need to be in the same search folder to obtain it