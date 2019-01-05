% MergeSort

function A = MergeSort(A)
  
  if length(A)>1
    
    [left,right]=split(A);
    left=MergeSort(left);
    right=MergeSort(right);
    A=merge(left,right);
    
  endif
  
endfunction


function [left, right]= split(A)
  
  j=1;
  k=1;
  
  choise=true;
  
  for i=1:length(A)
    
    if choise
      
      left(j)=A(i);
      j++;
      
    else
      
      right(k)=A(i);
      k++;
      
    endif
    choise=!choise;
    
  endfor
  
endfunction

function A = merge(left,right)
  
  n1=length(left);
  n2=length(right);
  
  left(n1+1)=inf;
  right(n2+1)=inf;
  
  i=1;
  j=1;
  k=1;
  
  while left(i)!=inf && right(j)!=inf
    
    if left(i)<=right(j)
      
      A(k)=left(i);
      i++;
      
    else
      
      A(k)=right(j);
      j++;
      
    endif
    k++;
  endwhile
  
  while n1>=i
    
    A(k)=left(i);
    k++;i++;
    
  endwhile
  
  while n2>=j
    
    A(k)=right(j);
    k++;j++;
    
  endwhile
  
endfunction