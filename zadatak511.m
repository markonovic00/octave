%Napisati funkciju koja racuna proizvod prvih n neparnih prirodnih brojeva.

function pro = zadatak511(n)
  
  x=1;
  for i=1:n
    if(rem(i,2)==1)
      x*=i;
    end  
  end
  pro = x;
  
endfunction
