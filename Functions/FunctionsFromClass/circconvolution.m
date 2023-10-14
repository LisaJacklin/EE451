function y = circconvolution(x1, x2, N)
% function  y = circconvolution(x1, x2, N)
%   x1, x2 input sequence of length <= N
%  N = size of buffer (max number of samples held), also size of output
%  array
% y = output of x1 (N) x2 (circular convolution of x1 with x2)
if length(x1) > N
    error('length of x1 must be <= N')
end
if length(x2) > N
    error('length of x2 must be <= N')
end

x1 = [x1 zeros(1, N - length(x1))];
x2 = [x2 zeros(1, N - length(x2))];

y = zeros(1,N);
x2(N:-1:1)= x2(1:N);
for n = 1:N
   y(n) = x1 * circshift2(x2,n,N)';
end

