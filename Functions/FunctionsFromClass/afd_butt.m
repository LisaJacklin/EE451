function [b, a] = afd_butt(Wp, Ws, Rp, As);
%analog lowpass filter design: butterworth
% -----------------------------------------
% [b, a] = afd_butt(Wp, Ws, Rp, As);
% b = Numerator coefficients of Ha(s)
% a = denominator coefficients of Ha(s)
% Wp = passband edge frequency in rad/sec; Wp > 0
% Ws = stopband edge frequency in rad/sec; Ws > Wp > 0
% Rp = passband ripple in +dB; (Rp >0)
% As = stopband attenuation in +dB; (As > 0)
%

if Wp <= 0
    error ("Passband edge must be larger than zero");
end

if Ws <= Wp
    error("Stopband edge must be larger than passband edge");
end

if (Rp <= 0) | (As < 0)
    error("PB ripple and/or SB attenuation must be larger than 0")
end

N = ceil((log10((10^(Rp/10)-1)/(10^(As/10)-1)))/(2*log10(Wp/Ws)));
fprintf('\n*** Butterworth Filter Order = %2.0f\n', N);
OmegaC = Wp/((10^(Rp/10) - 1)^ (1/(2*N)));
[b,a] = u_buttap(N, OmegaC);
end
