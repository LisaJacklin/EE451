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

%Part a: Length (using length.m)
%Part b: Causal/Anti-causal/Non-Causal 
%Part c: Energy (using energy.m)

%just as in the setup, within the command window I use energy.m function to
%determine the power over the range n
% [ p11] = energy (x1, n)
% p11 = 2

%Part d: Period and is it periodic?

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
%Part b: Causal/Anti-causal/Non-Causal
%Part c: Energy (using energy.m)

%in the command window using energy.m
%[p2] = energy (x2, n)
%p2 = 18

%Part d: Period and is it periodic?

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
% 

%Part a: Length
%Part b: Causal/Anti-causal/Non-Causal

%Part c: Energy (using energy.m)
%in command window energy.m is used on x3
% [p3] = energy (x3, n)
% p3 =     1.3330

%Part d: Period and is it periodic?

%problem 1.4
% equation: x4(n) = 2.^n * u(n)
% using stepseq.m, sigmult.m


%Part a: Length
%Part b: Causal/Anti-causal/Non-Causal
%Part c: Energy (using energy.m)
%Part d: Period and is it periodic?

%problem 1.5
% equation: x5(n) = 10*cos[2pin + pi/3] + 5sin[2pin]
% using sigadd.m, and the cos and sin functions built into MATLAB

%Part a: Length
%Part b: Causal/Anti-causal/Non-Causal
%Part c: Energy (using energy.m)
%Part d: Period and is it periodic?

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
stem(n, x1);

%Problem 2.2
stem(n, x2);

%Problem 2.3
%stem(n, x3);

%Problem 2.4
%stem(n, x4);

%Problem 2.5
%stem(n, x5);

%Problem 2.6
%stem(n, x6);

