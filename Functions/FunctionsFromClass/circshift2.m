function y = circshift2(x,m,N)
% function y = circshift(x,m,N)
% N = buffer size, i.e., maximum number of samples held
% m = "delay" amount 
% x = input sequence
% y = output sequence of x circularly shifted by m, with buffer size N

if length(x) > N
    error('length of (x) must be <= N')
end

x = [x zeros(1, N -length(x))];
n = [0:1:N-1];
n = mod(n - m, N); y = x(n + 1);

