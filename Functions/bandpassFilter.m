function h_bp = bandpassFilter(w1, w2, P, As)
    % w1 and w2 define the frequency range
    % P is half the filter length
    % As is the stopband attenuation in dB

    % Design the digital differentiator
    h_db = digitalDifferentiatorRectangular(w1, w2, P);

    % Apply a window to the differentiator to obtain the bandpass filter
    window = hamming(2*P + 1)';
    h_bp = h_db .* window;

    % Normalize by dividing by the sum to make it a true bandpass filter
    h_bp = h_bp / sum(h_bp);

    % Apply stopband attenuation
    h_bp = h_bp * 10^(-As/20);
end
