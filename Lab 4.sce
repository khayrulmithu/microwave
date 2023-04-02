clc;
clear;

n= 3.5;
mu=4*%pi*10e-7;
sigma=64.5e-6;
C=0.3e-12;
a=0.0635e-3;
l=0.00254;
r=1.27e-3;
R=(2*%pi*r*n)/(sigma*%pi*a*a);
L=(10*%pi*r*r*mu*n*n)/(9*r+10*l);

N=500;
fmax=10e12;
fmin=10e6;
f=fmin*((fmax/fmin).^((0:N)/N));
//%Z=((%i*2*%pi*f*L)+R).(%i*2*%pi*f*C)./(((%i*2*%pi*f*L)+R)+(%i*2*%pi*f*C));
Z=1./(%i*2*%pi*f*C+1./(r+%i*2*%pi*f*L));
Z_ideal = %i*2*%pi*f*L;
loglog(f,abs(Z),f,abs(Z_ideal));
title('Lmpedence of a Inductor as function of frequency');
xlabel('Frequency {\itf},Hz');
ylabel('Impedance |Z|,{\Omega}');
legend('wire-wound inductor','ideal inductor');
