%LinearSearchAll

function a = LinearSearchAll(A,key)
  
  a=[];
  j=1;
  
  for i=1:length(A)
    if A(i)==key
      a(j)=i;
      j++;
    endif  
  endfor
  
endfunction