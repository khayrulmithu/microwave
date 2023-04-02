clc;
clear;


f =10^6:10^7:10^10;
 rs =(4.8*10^ -6) .* sqrt( f ) ;
 re =(33.9*10^12) ./ f ;
 mu0 =4* %pi *10^ -7;
 c =47*10^ -12;
 w =2* %pi .* f ;
 l =2*1.25*10^ -2;
 a =2.032*10^ -4;
 temp =log(2* l / a ) /log( %e ) ;
 lex = mu0 * l *( temp -1) /(2* %pi ) ; 
 
 z =1 ./(1 ./ re + w * c * %i ) + rs + w .* lex * %i ;
 zideal =1 ./( w * c* %i ) ;
 
loglog(f,abs(z),f,abs(zideal));
xlabel('Frequency');
ylabel('Impedance');
title('RF behaviour of capacitor');

 
 
 
 
