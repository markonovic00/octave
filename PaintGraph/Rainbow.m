% DFS
% 'O' 'T' 'M' 'P'

function [bool, G]=Rainbow(G)
  
  global bool; % Ova promenljiva vraca da li je graf uspesno obojen
  global colors; % Globalna promenljiva za niz boja
  colors=['O' 'T' 'M' 'P']; % Inicijalizacija niza boja
  v=1:length(G.AdjMatrix);
  bool=true; % Postavljamo bool da bude tacan
  for u=v
    
    G.V(u).col='W'; % Ovo je color iz standardnog DFS algoritma
    G.V(u).color=colors(1); % Sve postavljamo da je prva boja
    G.V(u).pred=NaN;
    
  endfor
  
  
  for u=v
    
    if G.V(u).col=='W'
      
      G = Rainbow_Visit(G,u);
      
    endif
    
  endfor
  
endfunction


function G = Rainbow_Visit(G,u)
  
  global colors; % Pozivamo colors da se vidi i u ovoj funkciji
  G.V(u).col='G'; % Postavljamo trenutni cvor da je u obradi
  cbr=0; % color brojac postavljamo da je nula
  global bool; % Pozivamo bool da se vidi i u ovoj funkciji
  for v=find(G.AdjMatrix(u,:))
    
    if G.V(v).col=='W'
      
      G.V(v).pred=u;
      
      if G.V(u).color~=G.V(v).color % Proveravamo da li su boje mene i prethodnog razlicite
        
        G=Rainbow_Visit(G,v); % Radimo visit ako su boje razlicite
        
      endif
      while G.V(u).color==G.V(v).color % SVE DOK JE BOJA ISTA MENJAN BOJU KOMSIJE
        
        cbr++; % Uvecavamo brojac 
        if cbr==5 % Ako je brojca 5 znaci da ne moze da se dodeli boja i prekidamo algoritam
          bool=false; % Postavljamo da je neuspeno
          disp("Nemoguce"); % Vracamo poruku da je nemoguce
          return; % Zaustavlja funkciju
          
        endif
        
        G.V(v).color=colors(cbr); % Menjamo boju sledeceg do mene
        
      endwhile
      
    endif
    
  endfor
  
  G.V(u).col='W'; % Postavljamo col na belo da bi se od svakog cvora krenulo
  
endfunction