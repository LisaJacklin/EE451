function continuousFFt(x, plotH)
Fs = 41000;
Lx = length(x);
nextPowerOfTwo = 2*nextpow2(Lx);
plotScaleFactor = 4;


plotRange = nextPowerOfTwo/2;
plotRange = floor(plotRange/plotScaleFactor);

y = fft(x, nextPowerOfTwo);
h = y(1:plotRange);
f = (0:nextPowerOfTwo -1)*(Fs/nextPowerOfTwo);
f = f(1:plotRange);

set(plotH, 'ydata', h, 'xdata', f);

end