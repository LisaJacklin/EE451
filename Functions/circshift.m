function y = circshift(x, m, N)
% -----------------------------------
% Given:
% x is a function of n,
% m is the shift on the circle which which we wnat to make
% N is the number of ration points from x(n) taken
if length(x) > N
        error("length of (x) must be <= N");
end

x = [x zeros(1, N-length(x))];
n = [0:1:N-1];
n = mod(n-m, N);
y = x(n+1);

