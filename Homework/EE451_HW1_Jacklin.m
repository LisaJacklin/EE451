%EE451_Homework1_Jacklin
%Lisa Jacklin
% 9/2/2023

%Problem 1 
%please note that for each of the pieces of problem 1, the equations will
%be numbered, while the items to determine will be lettered.

%note that n comes from Problem 2
n = -5:1:5;

%problem 1.1
%equation: x1(n) = 5delta(n+1) + 10delta(n-3)
%using impseq.m,sigshift.m and sigadd.m this equation is inputted
%The following lines were written into the command line, note that n given
%from Problem 2 which will be plotted later is used as the reference values
%for this.
% [x1a, n] = impseq(-1, -5,5);
% x1a [ 0   0   0   0   1   0   0   0   0   0  0]
%[x1b, n] = impseq(3, -5,5);
% x1b [0   0   0   0   0   0   0   0   1   0   0]
%with this done, sigadd.m function can be used in the command window as
%well
% [ x1, n] = sigadd (x1a, n, x1b, n)
%x1 [0     0     0     0     1     0     0     0     1     0     0]

%Part a: Length 
%after setting up x1 in the command window, the length can be determined.
%length(x1);%length = 11

%Part b: Causal/Anti-causal/Non-Causal 
%Since x1 is not zero for all negative or positive values, this is a
%non-causal. Please view Problem 2.1 to view the figure that confirms this.

%Part c: Energy (using energy.m)
%just as in the setup, within the command window I use energy.m function to
%determine the power over the range n
% [ p11] = energy (x1, n)
% p11 = 2

%Part d: Period and is it periodic?
%Since delta functions only equal 1 at a single instance during each delta
%function, this function is not periodic and thus, does not have a period.

%problem 1.2
% Equation: x2(n) = u(n+3) - u(n-3)
% using stepseq.m, sigshift.m, and sigsub.m
%In the Command window:
% [x2a, n] = stepseq(-3, -5, 5)
% x2a [0   0   1   1   1   1   1   1   1   1   1]
% [x2b, n] = stepseq(3, -5, 5)
% x2b [ 0   0   0   0   0   0   0   0   1   1   1]
% this gives us the first and second half of x2. Now to add
% [x2, n] = sigadd (x2a, n, x2b, n)
% x2 [0     0     1     1     1     1     1     1     2     2     2]

%Part a: Length
%length(x2); %length = 11

%Part b: Causal/Anti-causal/Non-Causal
%Since x2 is not zero for all negative or positive values, this is a
%non-causal. Please view Problem 2.2 to view the figure that confirms this.

%Part c: Energy (using energy.m)
%in the command window using energy.m
%[p2] = energy (x2, n)
%p2 = 18

%Part d: Period and is it periodic?
%since a step function is 1 from the offset value or more generally, zero,
%there is no pattern to the result shown in figure 2, this this function is
%not periodic.

%problem 1.3
% equation: x3(n) = 0.5.^n * u(n)
% using stepseq.m, sigmult.m
%in command window:
% x3a = 0.5.^n;
% x3a [32.0000   16.0000    8.0000    4.0000    2.0000    1.0000    0.5000    0.2500    0.1250    0.0625    0.0312]
% [x3b, n] = stepseq(0,-5, 5)
% x3b [0   0   0   0   0   1   1   1   1   1   1]
%now to combined them using sigmult.m in command window
% [x3, n] = sigmult(x3a, n, x3b, n)
% x3 [0  0   0   0    0    1.0000    0.5000    0.2500    0.1250    0.0625    0.0312]

%Part a: Length
%length(x3); %length = 11

%Part b: Causal/Anti-causal/Non-Causal
%since the function x3 is zero until n = 0, this function is thus causal.

%Part c: Energy (using energy.m)
%in command window energy.m is used on x3
% [p3] = energy (x3, n)
% p3 =     1.3330

%Part d: Period and is it periodic?
%there is no patern in this function, and this is an exponential function
%past n = 0 thus, this function is not periodic.

%problem 1.4
% equation: x4(n) = 2.^n * u(n)
% using stepseq.m, sigmult.m
% x4a = 2.^n
% x4a [0.0312    0.0625    0.1250    0.2500    0.5000    1.0000    2.0000    4.0000    8.0000   16.0000   32.0000]
% [x4b, n] =  stepseq(0,-5, 5)
% x4b [ 0   0   0   0   0   1   1   1   1   1   1]
% [x4, n] = sigadd(x4a, n, x4b, n)
% x4 [0.0312    0.0625    0.1250    0.2500    0.5000    2.0000    3.0000    5.0000    9.0000   17.0000   33.0000]

%Part a: Length
%length(x4); %length = 11

%Part b: Causal/Anti-causal/Non-Causal
% since this signal begins at n = -1, and n less than -1 equals zero,
% although only off by a single point, results in a non-causal signal.

%Part c: Energy (using energy.m)
%in command window energy.m is used on x4
% [p4] = energy (x4, n)
% p4 =  1.4973e+03

%Part d: Period and is it periodic?
%since this function is exponential, this is non periodic.

%problem 1.5
% equation: x5(n) = 10*cos[2pin + pi/3] + 5sin[2pin]
% using sigadd.m, and the cos and sin functions built into MATLAB
% x5a = 10.*cos(2*pi*n + pi/3);
% x5a [5.0000    5.0000    5.0000    5.0000    5.0000    5.0000    5.0000    5.0000    5.0000    5.0000    5.0000]
% x5b = 5.* sin(2*pi*n);
% x5b [0.6123    0.4899    0.3674    0.2449    0.1225         0   -0.1225   -0.2449   -0.3674   -0.4899   -0.6123]
%[x5, n] = sigadd(x5a, n, x5b, n)
% x5 [5.0000    5.0000    5.0000    5.0000    5.0000    5.0000    5.0000    5.0000    5.0000    5.0000    5.0000]

%Part a: Length
%length(x5); %length = 11

%Part b: Causal/Anti-causal/Non-Causal
%just as the rest, this signal is non-causal as it does not change to be
%zero at any point within the signal.

%Part c: Energy (using energy.m)
% [p5] = energy (x5, n)
% p5 =  275.0000

%Part d: Period and is it periodic?
%since this function includes sin and cos this signal is periodic with a
%period of pi.

%problem 1.6
% equation: x6(n) = 5*exp[jpin + pi/6]
% using exponent built into MATLAB

%Part a: Length
%Part b: Causal/Anti-causal/Non-Causal
%Part c: Energy (using energy.m)
%Part d: Period and is it periodic?


%Problem 2: plot the signals in part 1 given n = -5...5
%note that this range for n is used to provide answers to problem 1 as
%well. Note that the n range is writen above with Problem 1 for values to
%compute with the functions built.

%Problem 2.1
figure; stem(n, x1);
xlabel('time (n)'); ylabel("Amplitude")
title('Stem Wave of x1 Problem 1.1')

%Problem 2.2
figure; stem(n, x2);
xlabel('time (n)'); ylabel("Amplitude");
title('Stem wave of x2 Problem 1.2')

%Problem 2.3
figure; stem(n, x3);
xlabel('time (n)'); ylabel("Amplitude");
title('Stem wave of x3 Problem 1.3')

%Problem 2.4
figure; stem(n, x4);
xlabel('time (n)'); ylabel("Amplitude");
title('Stem wave of x4 Problem 1.4')

%Problem 2.5
figure; stem(n, x5);
xlabel('time (n)'); ylabel("Amplitude");
title('Stem wave of x5 Problem 1.5')

%Problem 2.6
%stem(n, x6);

