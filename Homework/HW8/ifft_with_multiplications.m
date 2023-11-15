% Function to calculate IFFT with multiplications
function [y, multiplications] = ifft_with_multiplications(X_dft)
    N = length(X_dft);
    y = ifft(X_dft);
    multiplications = 0;
    for k = 1:N
        for n = 1:N
            twiddle_factor = exp(1i * 2 * pi * (k - 1) * (n - 1) / N);
            y(k) = y(k) * twiddle_factor;
            multiplications = multiplications + 4; % Two real multiplications and two real additions for each complex multiplication
        end
    end
end