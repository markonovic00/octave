%InsertionSort

function A= InsertionSort(A)
  
  for i=2:length(A)
    
    temp=A(i);
    j=i-1;
    while j>0 && A(j)>temp
      
      A(j+1)=A(j);
      j--;
      
    endwhile  
    A(j+1)=temp;
  endfor
  
endfunction