% SelectionSort

function A = SelectionSort(A)
  
  n=length(A);
  
  for i=1:n-1
    
    minInd=i;
    
    for j=i+1:n
      
      if A(j)<= A(minInd)
        
        minInd=j;
        
      endif
      
    endfor
    
    temp=A(minInd);
    A(minInd)=A(i);
    A(i)=temp;
    
  endfor
  
endfunction