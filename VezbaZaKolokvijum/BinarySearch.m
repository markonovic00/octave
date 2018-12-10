% BinarySearch
% Zadatak 2

function ind = BinarySearch(A,key)
  
  first=1;
  last=length(A);
  
  while first<=last
    
    middle=floor((first+last)/2);
    
    if A(middle)==key
      ind=middle;
      return;
    elseif A(middle)<key
      last=middle-1;
    else
      first=middle+1;
    endif
  endwhile
  
  a=[];
  
endfunction