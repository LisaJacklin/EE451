function [xn] = idft(Xk, N)
% ---------------------------------
% [xn] = idft(Xk, N);
%
n = 0:1:N-1;
Wnc = exp(-1i*2*pi/N);

WiDFT = Wnc .^ (n' *n);

xn = (Xk * WidFT)/N;