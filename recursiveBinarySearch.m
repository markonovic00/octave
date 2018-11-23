% recursiveBinarySearch.m

function rez = recursiveBinarySearch(A,p,r,key)
    
    %p=1;
    %r=length(A);
    
    if(p>r)
        rez=[];
        return
    else
        q=floor((p+r)/2);
        if(A(q)==key)
          rez=q;
          return
        elseif(A(q)>key)
          rez = recursiveBinarySearch(A,p,q-1,key);
        else
          rez = recursiveBinarySearch(A,q+1,r,key);
    endif
    endif
endfunction  