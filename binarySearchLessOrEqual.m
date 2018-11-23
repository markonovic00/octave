% binarySearchLessOrEqual

function rez = binarySearchLessOrEqual(A,key)
  
   p=1;
   r=length(A);
   while(p<=r)
      q=floor((p+r)/2);
      if(A(q)==key)
        rez=q;
        return
      elseif(A(q)>key)
        r=q-1;
      else
        p = q+1;
     endif
   endwhile
   rez=p-1;
  
endfunction  