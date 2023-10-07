function [xn] = idft(Xk,N)
% [xn] = idft(Xk, N);
%
n = 0:1:N-1; % row vector
Wnc = exp(j*2*pi/N);

WiDFT = Wnc .^ (n' * n);

xn = (Xk  * WiDFT)/N;
