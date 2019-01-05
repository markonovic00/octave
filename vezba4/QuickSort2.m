% QuickSort2

function A = QuickSort2(A, low, high)
  
  if low<high
    
    [A,ind]=partition(A,low,high);
    A=QuickSort2(A,low,ind-1);
    A=QuickSort2(A,ind+1,high);
    
  endif
  
endfunction

function [A,ind] = partition(A, low, high)
  
  pivot=A(high);
  
  i=low-1;
  
  for j=low:high-1
    
    if A(j)<=pivot
    i++;
    temp=A(i);
    A(i)=A(j);
    A(j)=temp;
    endif
    
  endfor
  
  temp1=A(i+1);
  A(i+1)=A(high);
  A(high)=temp1;
  ind=i+1;
  
endfunction