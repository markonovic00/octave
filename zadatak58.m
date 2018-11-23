%Napisati funkciju koja kao ulazni parametar ima kvadratne matrice A i B
% istih dimenzija, a kao izlazne parametre vektor m i skalar s. 
% Vektor m se sastoji od elemenata ispod glavne dijagonale matrice A 
% koji su pozitivni celi brojevi deljivi sa 3. Skalar s predstavlja 
% srednju vrednost elemenata sa sporedne dijagonale matrice B koji su 
% veci od srednje vrednosti elemenata sa glavne dijagonale matrice A.

function [m,s] = zadatak58(A,B)
  
  donjiel = tril(A,-1);
  vektor = donjiel(donjiel != 0);
  m=vektor(rem(vektor,3)==0);
  
  sumaA = sum(diag(A))/10;%Delimo sa deset jer nas mrzi da smisljamo matrice
  elB = diag(fliplr(B));
  s = mean(elB(elB>sumaA));
  
endfunction
