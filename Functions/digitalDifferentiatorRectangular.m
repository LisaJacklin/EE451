function h_db = digitalDifferentiatorRectangular(w1, w2, P)
    % w1 and w2 define the frequency range where Hdbw = jw
    % P is half the filter length

    % Impulse response
    n = -P:P;
    h_db = sin(w2 * n) - sin(w1 * n);

    % Apply rectangular window
    w_rect = rectwin(2*P + 1)';
    h_db = h_db .* w_rect;

    % Normalize by dividing by the sum to make it a true differentiator
    h_db = h_db / sum(h_db);
end
