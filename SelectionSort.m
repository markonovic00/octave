% SelectionSort

function A = SelectionSort(A)
  
  vel = length(A);
  
  for i=1:vel-1
    
    minIndx=i;
    
    for j=i+1:vel
    
      if A(j)<A(minIndx)
        minIndx=j;
      endif
    
    endfor
    
    temp = A(minIndx);
    A(minIndx)=A(i);
    A(i)=temp;
    
  endfor
  
endfunction