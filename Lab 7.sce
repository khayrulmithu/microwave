clc;
clear all;

//f=input("Enter Resonant Frequency");
f=98e9;
a=(1/f*sqrt(2*4*%pi*10e-7*8.85*10e-12));
disp(a);
b=a/2;
disp(b);
disp("The rectangular cavity resonator dimensions are a and b");
