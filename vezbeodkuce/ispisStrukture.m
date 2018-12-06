%ispisStrukture

function ispisStrukture(studenti)
  
  for i=1:length(studenti)
      printf("%d. %s brIndeksa: %d \n",i , studenti(i).ime,studenti(i).brIndeksa);
  endfor  
  
  endfunction