% izracunaj.m

function y = izracunaj(n,r)

if(n>r)
  y=factorial(n)/(factorial(r)*factorial(n-r));
else
  disp("r mora biti manji od n");
  y=0;
end
end