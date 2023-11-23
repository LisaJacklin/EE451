function h = rectangularFilter(P)
    N = 2 * P + 1;  % Filter length
    n = -(P):P;     % Time indices

    % Define the impulse response of the filter
    h_rect = double(abs(n) <= P);

    % Apply the rectangular window
    w_rect = double(abs(n) <= P);

    % Obtain the coefficients h_rect[n]
    h = h_rect .* w_rect;
end
