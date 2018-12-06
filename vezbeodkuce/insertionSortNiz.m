%insertionSortNiz

function A = insertionSortNiz(A)
  
  for i = 2 : length(A) % Krecemo od drugog elementa u nizu jer "smatramo" da je prvi vec na svom mestu
    key=A(i);
    j=i-1;
    while j>0 && A(j)>key  % Krece od nazad i gleda da li je veci key i ako jeste ostavlja ga na kraju ako ne prebacuje napred
      % Ako se zameni znak u manje onda ide u opadajucem redosledu
      A(j+1)=A(j);
      j--;
      
    endwhile
   
    A(j+1)=key; % Postavlja element na mesto pre prvog manjeg od njega 
    
  endfor
  
  endfunction