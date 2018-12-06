%LinearSearchAll

function indeks = LinearSearchAll(A,key)
  
  indeks=[];
  j=1;
  for i=1:length(A)
    
    if A(i)==key
      
      indeks(j)=i;
      j++;
      
    endif  
    
  endfor
  
endfunction