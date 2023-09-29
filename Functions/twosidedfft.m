function Xa = twosidedfft(x, fs, freq)
    % x: Input discrete signal
    % fs: Sampling frequency in Hz
    % freq: Vector of frequencies (Hz) at which you want to evaluate the Fourier transform
    % Xa: Complex Fourier transform values at the specified frequencies
    
    N = length(x); % Length of the input signal
    t = (0:N-1) / fs; % Time vector
    Xa = zeros(size(freq)); % Initialize output

    for k = 1:length(freq)
        f = freq(k);
        Xa(k) = sum(x .* exp(-1j * 2 * pi * f * t));
    end
end
