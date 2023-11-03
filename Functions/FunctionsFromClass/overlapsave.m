function [y] = overlapsave(x,h,N)
% [y] = overlapsave(x,h,N)
% y = output sequence
% x = input sequence
% h = impulse sequence
% N = block length (requires to be power of 2)

N = 2^(ceil(log10(N)/log10(2)));
Lenx = length(x) ;
M = length(h);
M1 = M-1; L = N - M1;
h = fft(h,N);

x = [zeros(1,M1), x, zeros(1, N-1)];
K = floor((Lenx + M1 - 1)/L); % because the last index of 0 initiated array is Lenx - 1
Y = zeros(K+1,N);
for k = 0:K
    xk = fft(x(k*L+1:k*L+N));
    Y(k+1,:) = real(ifft(xk .* h));
end
Y = Y(:,M:N)';
y = (Y(:))';
end