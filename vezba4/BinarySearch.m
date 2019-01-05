% BinarySearch

function ind = BinarySearch(A,key)
  
  low=1;
  high=length(A);
  
  while low<=high
    
    mid=floor((low+high)/2);
    
    if A(mid)==key
      
      ind=mid;
      return
      
    elseif A(mid)>key
      
      high=mid-1;
      
    else
      
      low=mid+1;
      
    endif
    
  endwhile
  
  ind=[];
  
endfunction