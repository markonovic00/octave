% MergeSort

function A = MergeSort(A)
  
  if length(A)>1
    
    [levi, desni]=deli(A);
    levi=MergeSort(levi);
    desni=MergeSort(desni);
    A=merge(levi,desni);
    
  endif
  
endfunction

function [levi,desni]=deli(A)
  
  j=1;
  k=1;
  
  choise=true;
  
  for i =1:length(A)
    
    if choise
      levi(j)=A(i);
      j++;
    else
      desni(k)=A(i);
      k++;
    endif
    choise=!choise;
  endfor
  
endfunction

function A = merge(levi,desni)
  
  n1=length(levi);
  n2=length(desni);
  
  levi(n1+1)=inf;
  desni(n2+1)=inf;
  
  i=1;
  j=1;
  k=1;
  
  while levi(i) ~=inf && desni(j)~=inf
    
    if levi(i)<=desni(j)
      A(k)=levi(i);
      i++;
    else
      A(k)=desni(j);
      j++;
    endif
    k++;
    
  endwhile
  
  while n1>=i
    A(k)=levi(i);
    i++;k++;
  endwhile
  
  while n2>=j
    A(k)=desni(j);
    j++;k++;
  endwhile
  
endfunction