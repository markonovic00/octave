%mergeSortNiz

function A = mergeSortNiz(A)
  
  A=mergeSort(A, 1, length(A));
  
endfunction

function A = mergeSort(A, pocetak, kraj)
  
  if pocetak < kraj
    
    sredina = floor((kraj+pocetak)/2);
    A=mergeSort(A,pocetak,sredina);
    A=mergeSort(A,sredina+1,kraj);
    A=merge(A,pocetak,sredina,kraj);
    
  endif  
  
endfunction

% Prvi podniz je A[pocetak...sredina] 
% Drugi podniz je A[sredina+1...kraj] 

function A = merge(A, pocetak, sredina, kraj)
  
  n1=sredina-pocetak+1;%duzina prvog podniza
  n2=kraj-sredina;%duzina drugog podniza
  
  for i=1:n1
    Prvi(i)=A(pocetak+i-1);
  endfor
  
  for j=1:n2
    Drugi(j)=A(sredina+j);
  endfor
  
  i=1;
  j=1;
  Prvi(n1+1)=inf;
  Drugi(n2+1)=inf;
  
  for k=pocetak:kraj
    
    if Prvi(i)<=Drugi(j)
      A(k)=Prvi(i);
      i++;
    elseif Drugi(j)<Prvi(i)  
      A(k)=Drugi(j);
      j++;
    endif
  endfor
  
endfunction