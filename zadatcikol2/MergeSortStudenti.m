% MergeSortStudenti

function A = MergeSortStudenti(A)
  
  if 1 < length(A)
    
  [left, right] = split(A);
  left=MergeSortStudenti(left);
  right=MergeSortStudenti(right);
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
  
  n1=length(left);
  n2=length(right);
  
  left(n1+1).brIndeksa=inf;
  right(n2+1).brIndeksa=inf;
  
  i=1;
  j=1;
  k=1;
  
  while left(i).brIndeksa!=inf && right(j).brIndeksa!=inf
    
    if left(i).brIndeksa<=right(j).brIndeksa
      
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