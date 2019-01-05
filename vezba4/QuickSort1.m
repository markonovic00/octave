% QuickSort1

function A = QuickSort1(A,low,high)
  
  
  
endfunction


function [A ,ind] = partition(A,low,high)
  
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
  A(high)=temp;
  ind=i+1;
  
endfunction