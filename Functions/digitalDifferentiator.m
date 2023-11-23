function h_dbw = digitalDifferentiator(w1, w2, N)
    % w1 and w2 define the frequency range where Hdbw = jw
    % N is the length of the filter

    % Discrete angular frequency range
    omega = linspace(0, pi, N);

    % Digital differentiator prototype (continuous)
    Hf = 1j * omega;

    % Define the frequency response for the specified range
    Hdbw = Hf .* ((omega >= w1) & (omega <= w2));

    % Compute the inverse discrete Fourier transform (IDFT)
    h_dbw = ifft(Hdbw);

    % Normalize by dividing by the sum to make it a true differentiator
    h_dbw = h_dbw / sum(h_dbw);
end
