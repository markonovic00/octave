%MergeSortM

function A = MergeSortM(A)
  
  if length(A)>1
    
    [left,right]=split(A);
    left=MergeSortM(left);
    right=MergeSortM(right);
    A=merge(left,right);
    
  endif

endfunction

function [left, right] = split(A)
  
  lbr=1;
  rbr=1;
  choise=true;
  for i=1:length(A)
    
    if choise
      left(lbr)=A(i);
      lbr++;
    else
      right(rbr)=A(i);
      rbr++;
    endif
    
  choise=!choise;
  endfor
endfunction

function A = merge(left, right)
  
  leftlen=length(left);
  rightlen=length(right);
  
  left(leftlen+1)=inf;
  right(rightlen+1)=inf;
  
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
  
  while leftlen>=i
    A(k)=left(i);
    i++; k++;
  endwhile
  
  while rightlen>=j
    A(k)=right(j);
    j++;k++;
  endwhile
  
endfunction