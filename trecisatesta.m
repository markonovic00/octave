% Treci zadatak sa testa od prosle god

function [indx,min] = trecisatesta(A)
  
  minimum = min(A(:,2:2:end));
  neparni= rem(minimum,2)==1;
  min = min(minimum(neparni));
  indx=find(A==min);
  
endfunction
