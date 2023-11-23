function h_bp = bandpassFilterOptimal(w1, w2, As, N)
    % w1 and w2 define the frequency range
    % As is the stopband attenuation in dB
    % N is the filter length

    % Define the frequency bands and corresponding amplitudes
    freq_bands = [0, w1, w2, pi];
    ampl_db = [0, 0, -As, -As];

    % Design the bandpass filter using optimal equiripple method
    h_bp = firpm(N-1, freq_bands./pi, 10.^(ampl_db/20), {1, 1});

    % Normalize by dividing by the sum to make it a true bandpass filter
    h_bp = h_bp / sum(h_bp);
end
