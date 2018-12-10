%LinearSearchSentinel

function ind = LinearSearchSentinel(A,key)
  
  temp=A(length(A));
  A(length(A))=key;
  
  i=1;
  
  while A(i) ~= key
    i++;
  endwhile
  
  A(length(A))=temp;
  
  if A(i)==key || temp==key
    
    ind=i;
    return;
    
  endif
  
  ind=[];
  
endfunction