%BinarySearchLessOrEqual

function indeks=BinarySearchLessOrEqual(A,key)
  
  first=1;
  last=length(A);
  
  while first<=last
  
    middle=floor((first+last)/2);
    if A(middle)==key
      indeks=middle;
      return
    elseif A(middle)>key
      last=middle-1;
    else
      first=middle+1;
    endif
  endwhile
  indeks=first-1;
  
endfunction