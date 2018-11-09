%logika.m
%zadatak5.3

function [l1,l2]=logika(a,b)
  
  if((a+b)>(a*b))
    l1=true;
  else
    l1=false;
  end
  if((a^b)>(b^a))
    l2=true;
  else
    l2=false;
  end
endfunction
