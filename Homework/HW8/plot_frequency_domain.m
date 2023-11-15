function plot_frequency_domain(signal, Fs)
    N = length(signal);
    f = linspace(0, Fs, N);
    spectrum = abs(fft(signal)/N);
    
    % Plot the single-sided amplitude spectrum
    plot(f(1:N/2), spectrum(1:N/2));
    xlabel('Frequency (Hz)');
    ylabel('Amplitude');
    grid on;
end
