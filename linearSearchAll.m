% linearSearchAll.m

function rez = linearSearchAll(A,key)
  
  rez=[];
  j=0;
  for k=1:length(A)
    if(A(k)==key)
      j++;
      rez(j)=k;
    endif
  endfor  
  
endfunction  