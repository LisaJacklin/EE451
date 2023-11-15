% Function to calculate DFT with multiplications
function [X_dft, multiplications] = dft_with_multiplications(x)
    N = length(x);
    X_dft = zeros(1, N);
    multiplications = 0;
    for k = 1:N
        for n = 1:N
            twiddle_factor = exp(-1i * 2 * pi * (k - 1) * (n - 1) / N);
            X_dft(k) = X_dft(k) + x(n) * twiddle_factor;
            multiplications = multiplications + 2; % Two real multiplications for each complex multiplication
        end
    end
end
