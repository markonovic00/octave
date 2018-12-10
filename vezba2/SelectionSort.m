% SelectionSort

function A = SelectionSort(A)
  
  vel=length(A);
  
  for i=1:vel-1
    
    minIndex=i;
    
    for j=i+1:vel
      
      if A(minIndex)>A(j)
        minIndex=j;
      endif
      
    endfor
    
    temp=A(minIndex);
    A(minIndex)=A(i);
    A(i)=temp;
    
  endfor
  
endfunction