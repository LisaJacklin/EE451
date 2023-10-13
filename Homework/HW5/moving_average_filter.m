function [b, a, wl] = moving_average_filter(n)
%------------------------------------------------

    % Define the function to calculate the magnitude response at a given N
    mag_response = @(N) abs(freqz(ones(1, N)/N, 1, 1024));

    % Use fzero to find N such that the magnitude response is -3 dB
    N = fzero(@(N) mag_response(N) - sqrt(2)/2, n);

    % Calculate the filter coefficients
    b = ones(1, N) / N;
    a = 1;

    % Calculate the cutoff frequency wl
    wl = 2 / (N + 1);

    % Display the coefficients and cutoff frequency
    fprintf('Filter Coefficients (b): ');
    disp(b);
    fprintf('Filter Coefficients (a): ');
    disp(a);
    fprintf('Cutoff Frequency (wl): %.4f\n', wl);

