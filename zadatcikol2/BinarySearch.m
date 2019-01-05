% BinarySearch

function ind = BinarySearch(A,key)
  
  low=1;
  high=length(A);
  
  while low<=high
    
    middle=floor((low+high)/2);
    
    if A(middle).brIndeksa==key
      
      ind=middle;
      return;
      
    elseif key>A(middle).brIndeksa
      
      low=middle+1;
      
    else
      
      high=middle-1;
      
    endif
    
  endwhile
  
  ind=[];
  
endfunction