% InsertionSort
% Opadajuci redosled 1.

function A = InsertionSort(A)
  
  for i=2:length(A)
    
    pivot=A(i);
    j=i-1;
    
    while j>0 && A(j)<pivot
      
      A(j+1)=A(j);
      j--;
      
    endwhile
    A(j+1)=pivot;
  endfor
  
endfunction