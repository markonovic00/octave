
function [A,ind] = partition(A,low,high)
  
  pivot=length(A); %Pivot
  i=low-1;
  
  for j=low:high-1
    
    if A(j) <= pivot
      
      i=i+1;
      A([i j])=A([j i]); % Ovo skladisti u temp i zameni el
      
    endif
    
  endfor
  A
i  
  A([i+1 high])=A([high i+1]);
  ind = i+1;
  
endfunction