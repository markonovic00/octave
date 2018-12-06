%LinearSearch

function indeks = LinearSearch(A,key)
  
  for i=1:length(A)
    
    if A(i)==key
      indeks=i;
      return
    endif
    
  endfor
  indeks=[];
  
endfunction