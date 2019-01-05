%InsertionSort

function A = InsertionSort(A)
  
  for i=2:length(A)
    
    j=i-1;
    temp = A(i);
    while j>0 && A(j).brIndeksa>temp.brIndeksa
      
      A(j+1)=A(j);
      j--;
      
    endwhile
    A(j+1)=temp;
  endfor
  
endfunction