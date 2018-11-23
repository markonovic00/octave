% linearSearchSentinel
% Sentinel cuvar na kraju i uvek se najde taj element

function rez = linearSearchSentinel(A,key)
  
  n = length(A);
  last = A(n);
  A(n) = key;
  k=1;
  while A(k) ~= key
    k=k+1;
  end
  A(n)=last;
  if k<n || A(n)==key
    rez=k;
  else
    rez=[];
  end
  
endfunction  