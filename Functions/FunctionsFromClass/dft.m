function [Xk] = dft(xn,N)
% [Xk] = dft(xn, N);
% computes N point DFT of xn, pad xn with 0's if length(xn) < N
%
n = 0:1:N-1; % row vector
Wn = exp(-j*2*pi/N);

WnDFT = Wn .^ (n' * n);

lx = length(xn);
xnz = xn;
if lx < N
    xnz = [xnz zeros(1, N-lx)];
end
Xk = xnz  * WnDFT;
