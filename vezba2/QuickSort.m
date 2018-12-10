% QuickSort

function A = QuickSort(A,low,high)
  
  if high>low
  [ind, A]=partiton(A,low,high);
  A=QuickSort(A,low,ind-1);
  A=QuickSort(A,ind+1,high);
  endif
  
endfunction

function [ind, A]=partiton(A,low,high)
  
  pivot = A(high);
  
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