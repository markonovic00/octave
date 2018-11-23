% linearSearch.m
% Linearna pretraga
% Vraca indeks prvog elementa koji se poklapa sa trazenim
% A je niz a key je ocekivani element

function rez = linearSearch(A,key)
    
    for k=1:length(A)
      if(A(k)==key)
        rez=k;
        return
      endif
    endfor
    rez =[];
    
endfunction