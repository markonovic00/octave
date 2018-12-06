% MergeSort

function A = MergeSort(A)
  
  if length(A)>1
    
    [levi, desni]=split(A);
    levi=MergeSort(levi);
    desni=MergeSort(desni);
    A=merge(levi,desni);
    
  endif
  
endfunction

function [levi, desni]=split(A)
  
  state=true;
  j=1;
  k=1;
  for i=1:length(A)
    if state
      levi(j)=A(i);
      j++;
    else 
      desni(k)=A(i);
      k++;
    endif
    state=!state;
  endfor
  
endfunction

function A = merge(levi,desni)
  
  levivel=length(levi);
  desnivel=length(desni);
  
  levi(levivel+1)=inf;
  desni(desnivel+1)=inf;
  
  i=1;
  j=1;
  k=1;
  
  while levi(i) ~= inf && desni(j) ~= inf
    if levi(i)<=desni(j)
      A(k)=levi(i);
      i++;  
    else 
      A(k)=desni(j);
      j++;
    endif
    k++;
  endwhile
  
  while levivel>=i
    A(k)=levi(i);
    i++;
    k++;
  endwhile
  
  while desnivel>=j
    A(k)=desni(j);
    j++;
    k++;
  endwhile
  
endfunction