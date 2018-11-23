% 5.7 Napisati funkciju koja kao ulazni parametar ima kvadratnu
% matricu A, a kao izlazni parametar vraca skalar s koji
% predstavlja redni broj vrste sa minimalnom sumom.

function [s] = zadatak57 (A)
  
  minsuma= min(sum(A,2));
  s=find(sum(A,2)==minsuma);
  
endfunction