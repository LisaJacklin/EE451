function [y] = overlapadd(x, h, N)
% [y] = overlapadd(x, h, N)
% y = output sequence
% x = input sequence
% h = impulse sequence
% N = block length (requires to be power of 2)

N = 2^(ceil(log2(N)));  % Use log2 to find the nearest power of 2.
Lenx = length(x);
M = length(h);
M1 = M - 1;
L = N - M1;
h = fft(h, N);

x = [x, zeros(1, M1), zeros(1, N-1)];
K = floor(Lenx / L);  % Changed calculation for K.
Y = zeros(K, N);  % Changed size to avoid extra zeros.
for k = 0:K-1  % Adjusted loop to not process extra block.
    xk = fft(x(k*L+1:k*L+N));
    Y(k+1, :) = ifft(xk .* h);
end
y = sum(Y, 1);  % Sum the rows to obtain the output sequence.
end
