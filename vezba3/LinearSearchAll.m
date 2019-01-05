% LinearSearchAll

function ind=LinearSearchAll(A,key)
  
  ind=[];
  br=1;
  
  for i=1:length(A)
    
    if A(i)==key
      
      ind(br)=i;
      br++;
      
    endif
    
  endfor
  
endfunction