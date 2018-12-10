% LinearSearch

function ind = LinearSearch(A,key)
  
  for i=1:length(A)
    
    if A(i)==key
      
      ind=i;
      return;
      
    endif
    
  endfor
  
  ind=[];
  
endfunction