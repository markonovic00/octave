%insertionSort.m

function A= insertionSort(A)
    
   for j=2:length(A)
     key=A(j);
     i=j-1;
     while(i>0 && A(i)>key)
        A(i+1)=A(i);
        i=i-1;
     endwhile
     A(i+1)=key;
   endfor
  
endfunction