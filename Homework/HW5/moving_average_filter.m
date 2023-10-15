function [b, a, wl] = moving_average_filter(n)
%------------------------------------------------
%based on notes from in class review of HW5, we know the following:
b = [1/n 1/n 1/n]; 
a = [1];

%please note that I am using sudo code for much of this for my
%understanding to be displayed.
%thie issue here is going to be determining wl. To determine this value, we
%need to have a nested function.
function w = cutoff(wl)
    %here is where abs(H(w)) - abs(H0)/ sqrt(2) comes in since we want to
    %have a value determined to find -3dB based on the desciption of the
    %problem. 

    %Since we have wl, we will have to calculate H(wl), this can be done by
    %using filter (b,a,wl) since we are given these values and then we
    %should be able to use fft to transform into the frequency domain.
    y=filter(b,a,wl);
    yf = fftshift(fft(y));

    %using this, we should be able to use the main to subtract from H(0)
    %and then divide by sqrt(2) which should give w.
    yft = yf - yf(0)/sqrt(2);

end

wl = fzero(@cutoff, [zero, zero2]); 
%note that we need to find the first zero and the second zero here to
%determine what we are trying to find.
