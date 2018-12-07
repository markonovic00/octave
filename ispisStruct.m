%ispisStruct.m

function ispisStruct(studenti)
  
  duzina = length(studenti);
  for i=1:duzina
    
    fprintf("%d: %s BrIndeksa %d\n",i,studenti(i).ime,studenti(i).brIndeksa)
   
  endfor 
  
  endfunction