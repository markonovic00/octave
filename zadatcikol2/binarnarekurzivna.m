%binarnarekurzivna
% 14 15 16 17
function rez = binarnarekurzivna(A, p, r, key)
  
  br=1;
  if(p > r)
     rez = [];
     return
  else
     q = floor((p+r)/2);
     if(A(q) == key)
         q2=q;
         rez(br)=q;
         while A(q+1)==key
           
           br++;
           rez(br)=q+1;
           q++;
           
         endwhile
         
         
         while A(q2-1)==key
           
           br++;
           rez(br)=q2-1;
           q2--;
           
         endwhile
         return;
         
     elseif(A(q) > key)
         rez = binarnarekurzivna(A, p, q - 1, key);
     elseif(A(q) < key)
         rez = binarnarekurzivna(A, q + 1, r, key);
     endif
  endif 
endfunction