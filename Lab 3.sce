clc;
close all;

l=2.5;
d=16*2.4*10^-3;
R=5e2;
C=5e-12;
L=0.002*l*[(2.3*log(4*l/d))-0.75]*10^-6;
f=1e3:1e3:5e9;
jXl=%i*2*%pi.*f*L;
jXc=[1./(2*pi.*f*C)]*%i;
A=[(R.*-jXc)./(R-jXc)];
Zeq=[(A+2*jXl).*(-jXc)]./((2*jXl+A)-jXc);

plot(f,abs(Zeq));
xlabel('Frequency');
ylabel('Impedance');
title('Frequency Response of 500 ohm metal film resistor');
