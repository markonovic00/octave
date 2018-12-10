% LinearSearchAll

function count = LinearSearchAll(A,key)
  
  count=0;
  
  for i=1:length(A)
    
    if A(i).prvi==key || A(i).drugi==key || A(i).treci==key
      
      count++;
      
    endif
    
  endfor
  
endfunction
