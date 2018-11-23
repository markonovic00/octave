% linearSearchSort

function rez = linearSearchSort(A,key)
    
    for k=1:length(A)
        if (A(k)==key)
            rez=k;
            return
        elseif(A(k)>key)
            rez=[];
            return
        endif    
    endfor
    rez=[];  
  
endfunction