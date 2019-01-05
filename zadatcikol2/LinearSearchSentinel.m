% LinearSearchSentinel

function ind = LinearSearchSentinel(A, key)
  
  pivot=A(length(A)).brIndeksa;
  A(length(A)).brIndeksa=key;
  i=1;
  while A(i).brIndeksa != key
    
    i++;
    
  endwhile
  
  A(length(A)).brIndeksa=pivot;
  
  if A(i).brIndeksa==key
    
    ind=i;
  else
    
    ind=[];
  endif
  
endfunction