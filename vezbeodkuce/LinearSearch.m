%LinearSearch

function a = LinearSearch(A,key)
  
  for i=1:length(A)
    
    if A(i)==key
      
      a=i;
      return;
      
    endif

  endfor
  
  a=[ ];
endfunction