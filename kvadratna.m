%kvadratna.m
%Zadatak 5.2
%Ova funkcija izracunava x1 i x2
%ulaz joj je skalar a , b ,c

function [x1,x2] = kvadratna(a,b,c)
  
  x1=(-b+sqrt(b^2-4*a*c))/(2*a);
  x2=(-b-sqrt(b^2-4*a*c))/(2*a);
  
endfunction
