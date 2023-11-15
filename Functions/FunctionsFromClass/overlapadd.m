function [y] = overlapadd(x,h,N)
% [y] = overlapadd(x,h,N)
% y = output sequence
% x = input sequence
% h = impulse sequence
% N = size of FFT >= 2*length(h) - 1

N = 2^(ceil(log10(N)/log10(2)));
M = length(h);

if N < (2*M - 1)
    error("N must be >= 2*length(h) - 1")
end

Lenx = length(x); 
M1 = M-1; L = N - M1; Hk = fft(h,N);
K = floor((Lenx-1)/L);

y = zeros(1,(K+1)*N);
x = [x zeros(1,N-1)];

for k = 0:K
    xm = [x(1, k*L+1:k*L+L) zeros(1,M1)];
    xk = fft(xm);
    xm = real(ifft(xk .* Hk));
    y(1,k*L+1:k*L+N) = y(1,k*L+1:k*L+N) + xm;
end
y = y(1,1:Lenx + M - 1);
end