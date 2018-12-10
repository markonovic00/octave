%IspisStudenata

function ispis(studenti)
  
  for i=1:length(studenti);
    
    fprintf("%d. %s |prvi: %d |drugi: %d |treci %d\n",i,studenti(i).ime,studenti(i).prvi,studenti(i).drugi,studenti(i).treci);
    
  endfor
  
endfunction