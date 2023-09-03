function [p] = energy( y,n)
%UNTITLED Summary of this function goes here
%   s is the input signal
%   t is the independent variable

y2 = y.^2;
%this gives us the power for each time instance n
p = sum(y2);
%Then, using MATLAB sum we can get the energy over the range
