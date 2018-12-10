% LinearSearchAll

function ind=LinearSearchAll(A,key)
  
  ind =[];
  j=1;
  for i=1:length(A)
    
    if A(i)==key
      
      ind(j)=i;
      j++;
      
    endif
    
  endfor
  
endfunction