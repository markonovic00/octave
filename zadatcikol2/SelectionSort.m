% SelectionSort

function A = SelectionSort(A)
  
  for i=1:length(A)-1
    
    for j=i+1:length(A)
      
      if A(i).brIndeksa>A(j).brIndeksa
        
        temp=A(i);
        A(i)=A(j);
        A(j)=temp;
      endif
    endfor
    
  endfor
  
endfunction