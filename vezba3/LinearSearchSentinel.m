% LinearSearchSentinel

function ind = LinearSearchSentinel(A, key)
  
  n=length(A);
  sent=A(n);
  A(n)=key;
  
  i=1;
  
  while A(i)!=key
    
    i++;
    
  endwhile
  
  A(n)=sent;
  
  if A(i)==key || A(n)==key
    
    ind=i;
    
  else
    
    ind=[];
    
  endif
  
endfunction