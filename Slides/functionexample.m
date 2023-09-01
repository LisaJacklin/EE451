function[x, n] = impseq(n0, n1, n2)
%creating a function
%this will generate x(n) = delta(n - n0) for n1 <= n <= n2
%[x,n] = impseq(n0, n1, n2)

n = n1:n2;
x = [(n - n0) == 0] %boolean function here for x if equal it will be 1