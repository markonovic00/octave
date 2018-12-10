% MergeSort

function A = MergeSort(A)
  
  if length(A)>1
    
    [levi, desni]=split(A);
    levi=MergeSort(levi);
    desni=MergeSort(desni);
    A=merge(levi,desni);
    
  endif
  
endfunction

function [levi, desni]= split(A)
  
  state=true;
  i=1;
  j=1;
  for k=1:length(A)
    
    if state
      levi(i)=A(k);
      i++;
    else
      desni(j)=A(k);
      j++;
    endif
  state=!state;
  endfor
  
endfunction

function A = merge(levi,desni)
  
  n1=length(levi);
  n2=length(desni);
  
  levi(n1+1)=inf;
  desni(n1+1)=inf;
  
  i=1;
  j=1;
  k=1;
  
  while levi(i) ~=inf && desni(j) ~=inf
    
    if levi(i)<desni(j)
      
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