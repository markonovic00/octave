%BinarySearchLessOrEqual

function a=BinarySearchLessOrEqual(A,key)
  
  first=1;
  last = length(A);
  
  while first<=last
    middle=floor((first+last)/2);
    if A(middle)==key
      a=middle;
      return;
    elseif A(middle)>key
      last=middle-1;
    else 
      first=middle+1;
    endif
  endwhile
  a=first-1;
  
endfunction