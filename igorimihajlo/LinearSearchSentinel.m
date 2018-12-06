%LinearSearchSentinel

function indeks = LinearSearchSentinel(A,key)
  
  vela=length(A);
  temp=A(vela);
  A(vela)=key;
  i=1;
  while A(i) ~= key
    i++;
  endwhile
  
  A(vela)=temp;
  
  if A(i)==key || temp==key
    
    indeks=i;
  
  else

    indeks=[];
    
  endif
  

endfunction