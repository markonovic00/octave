% binarySearch.m

function rez = binarySearch(A,key)
  
    p = 1;% Leva granica
    r = length(A);% Desna granica
    while (p<=r)
        q=floor((p+r)/2); % Sredina
        if (A(q) == key)
          rez=q; % Element je na sredini niza
          return
        elseif(A(q)>key)
          r=q-1; % Krecemo levo ako je manji
        else
          p=q+1; % Krecemo desno ako je veci
        endif
    endwhile
    rez=[];  
  
endfunction  