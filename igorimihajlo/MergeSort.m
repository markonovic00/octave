%MergeSort

function A = MergeSort(A)
  
  if length(A)>1
    [leva,desna]=split(A);
    leva=MergeSort(leva);
    desna=MergeSort(desna);
    A=merge(leva,desna);
  endif
  
endfunction

function [leva, desna] = split(A)
  
  j=1;
  k=1;
  state=true;
  for i=1:length(A)
    
    if state
      leva(j)=A(i);
      j++;
    else
      desna(k)=A(i);
      k++;
    endif
    
  state=!state;
  endfor
  
endfunction

function A = merge(leva,desna)
  
  levavel=length(leva);
  desnavel=length(desna);
  
  leva(levavel+1)=inf;
  desna(desnavel+1)=inf;
  
  i=1;
  j=1;
  k=1;
  
  while leva(i)!=inf && desna(j)!=inf
    
    if leva(i)<=desna(j)
      A(k)=leva(i);
      i++;
    else
      A(k)=desna(j);
      j++;
    endif
    k++;
  endwhile
  
  while levavel>=i
    A(k)=leva(i);
    i++;
    k++;
  endwhile
  
  while desnavel>=j
    A(k)=desna(j);
    j++;
    k++;
  endwhile
  
endfunction