%Napisati funkciju koja vraca vektor svih neparnih celih 
%brojeva u intervalu od a do b.

function v = zadatak59(a,b)
  
  for i=a:b
    if(rem(i,2)==1)
      v(end+1) = i;
    end
  end  
  
endfunction
