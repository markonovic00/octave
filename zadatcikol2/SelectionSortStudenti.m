% SelectionSortStudenti

function A = SelectionSortStudenti(A)
  
  n=length(A);
  
  for i=1:n-1
    
    for j=i+1:n
      
      if A(j).brIndeksa<A(i).brIndeksa
        
        temp=A(j);
        A(j)=A(i);
        A(i)=temp;
        
      endif
      
    endfor
    
  endfor
  
endfunction