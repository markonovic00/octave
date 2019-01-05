% InsertionSortStudenti

function A = InsertionSortStudenti(A)
  
  for i=2:length(A)
    
    j=i-1;
    key=A(i);
    while j>0 && A(j).brIndeksa>key.brIndeksa
      
      A(j+1)=A(j);
      j--;
      
    endwhile
        A(j+1)=key;
  endfor
  
endfunction