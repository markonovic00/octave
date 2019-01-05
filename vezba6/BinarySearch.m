% BinarySearch

function ind = BinarySearch(A,key)
  
  bot=1;
  top=length(A);
  
  while bot<=top
    
    mid=floor((bot+top)/2);
    
    if A(mid)==key
      
      ind=mid;
      return;
      
    elseif A(mid)>key
      
      top=mid-1;
      
    else
      
      bot=mid+1;
      
    endif
    
  endwhile
  
  ind=[];
  
endfunction