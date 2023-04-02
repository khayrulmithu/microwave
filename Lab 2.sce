clc;
close;
c=2e-12;
r=2000;
l=7;
mil=2.54e-3;
d=64*mil;
L=0.002e-6*l*([2.3*log(4*l/d)]-.75);
f=1e6:10e6:500e6;
XL=2*%pi*f*L*i;
XC=-%i./(2*%pi*f*c);
Z=(r+2*XL).*(XC)./(r+2*XL+XC);

plot(f,abs(Z));
xlabel('Frequency in MHz');
ylabel('Zeq in ohm');
title('RF Behaviour of Carbon Composition Resistor');

