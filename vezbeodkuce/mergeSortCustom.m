%mergeSortCustom

function A = mergeSortCustom(A)
  
  if length(A)>1
    
    [left , right]=split(A);
    left=mergeSortCustom(left);
    right=mergeSortCustom(right);
    A=merge(left,right);
    
  endif  
  
endfunction

function [left, right] = split(A)
  state=true;
  j=1;
  k=1;
  for i=1:length(A)
    
    if state
      left(j)=A(i);
      j++;
    else
      right(k)=A(i);
      k++;
    endif
    
    state=!state;
  endfor
endfunction

function A = merge(left,right)
  
  left_size=length(left);
  right_size=length(right);
  
  left(left_size+1)=inf;
  right(right_size+1)=inf;
  
  i=1;
  j=1;
  k=1;
  while left(i) != inf && right(j) != inf
    if left(i)<=right(j)
      A(k)=left(i);
      i++;
    elseif left(i)>right(j)
      A(k)=right(j);
      j++;
    endif
    k++;  
  endwhile
  
  while left_size>=i
    A(k)=left(i);
    i++;
    k++;
  endwhile
  
  while right_size>=j
    A(k)=right(j);
    j++;
    k++;
  endwhile
  
endfunction