function [b, a] = u_buttap(N, Omegac);
%Unnormalized butterworth Analog Lowpass Filter Prototype
% ------------------------------------------------
% [ b, a] = u_battap(N, Omegac);
%b = numerator polynomial coefficients of Ha(s)
%a = denominator polynomial coefficients of Ha(s)
%N = order of the butterworth filter
% Omegac = cutoff frequency in radians/sec
%
[z, p, k] = buttap(N);
p = p*Omegac;
k = k*Omegac^N;
B = real(poly(z));
b = k*B; a = real(poly(p));
end
