%Ispis Studenti

function studentiispis(studenti)
  
  fprintf("RBr | Ime | Prezime | BrIndeksa | Ocena\n");
  
  for i=1:length(studenti)
    
    fprintf("%d. | %s | %s | %d | %d\n",i,studenti(i).ime,studenti(i).prezime,studenti(i).brIndeksa,studenti(i).ocena);
    
  endfor
  
endfunction