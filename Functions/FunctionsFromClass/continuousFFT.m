function continuousFFT(x, plotHandle)
%Calculate FFT(data) and update plot with it
%data = read(daqHandle, daqHandle.ScansAvailableFcnCount, "OutputFormat",
%"Matrix);

Fs = 44100;
data = x;
lengthOfData = length(data);
%next closest power of 2 to the length
nextPowerOfTwo = 2^nextpow2(lengthOfData);

plotScaleFactor = 4;
%plot is symmetric about n/2
plotRange = nextPowerOfTwo/2;
plotRange = floor(plotRange/plotScaleFactor);

yDFT = fft(data, nextPowerOfTwo);

h = yDFT(1:plotRange);
abs_h = abs(h);

%frequency range
freqRange = (0:nextPowreOfTwo - 1) * (Fs/ nextPowerOfTwo);
%only plot up to n/2 (as other half is the mirror image)
gfreq = freqRange(1:plotRange);

%update the plot
set(plotHandle, 'ydata', abs_h, 'xdata', gfreq);
drawnow
end