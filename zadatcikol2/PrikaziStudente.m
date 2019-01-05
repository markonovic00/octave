%PrikaziStudente

function PrikaziStudente (studenti,indeksi)
  
  indeksi(length(indeksi)+1)=inf;
  br=1;
  while indeksi(br)!=inf
    br2=(indeksi(br));    
     fprintf("%d. | %s | %s | %d | %d\n",br2,studenti(br2).ime,studenti(br2).prezime,studenti(br2).brIndeksa,studenti(br2).ocena);
    br++;
    
  endwhile
  
endfunction