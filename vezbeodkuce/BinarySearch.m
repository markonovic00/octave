%BinarySearch

function a = BinarySearch(A,key)
  
  p=1;
  r=length(A);
 
  while p<=r
    
    q=floor((p+r)/2);
    if A(q)==key
      a=q;
      return;
    elseif A(q)>key
      r=q-1;
    elseif A(q)<key
      p=q+1;
    endif
    
  endwhile
  a=[];
  
endfunction