% InsertionSort

function A = InsertionSort(A)
  
  for i=2:length(A)
    
    key=A(i);
    j=i-1;
    while j>0 && A(j)>key
      
      A(j+1)=A(j);
      j--;
      
    endwhile
    
    A(j+1)=key;
    
  endfor
  
endfunction