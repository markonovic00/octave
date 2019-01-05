% BFSSugg

function suggestions = BFSSugg(G, ime, prezime)
  
  suggestions=[];
  s=NaN;
  
  for i=1:length(G.V)
    
    if strcmp(G.V(i).ime, ime) && strcmp(G.V(i).prezime, prezime)
      
      s=i; break;
      
    endif
    
  endfor
  
  if isnan(s)
    
    disp("Ne postoji taj korisnik");
    
  else
    
    disp("Id korisnika je:");
    disp(s);
    
  endif
  
  v=1:length(G.AdjMatrix);
  
  for u=v(v~=s)
    
    G.V(u).color='W';
    G.V(u).d=inf;
    G.V(u).pred=NaN;
    
  endfor
  
  G.V(s).color='W';
  G.V(s).d=0;
  G.V(s).pred=NaN;
  
  Q=[];
  Q=[Q s];
  
  while ~isempty(Q)
    
    u=Q(1);
    Q(1)=[];
    
    
    if G.V(u).d<2
    
      for v=find(G.AdjMatrix(u, :))
        
          if G.V(v).color=='W'
          
            G.V(v).color='G';
            G.V(v).pred=u;
            G.V(v).d=G.V(u).d+1;
            Q=[Q v];
          
          endif
      endfor
    endif  
    if G.V(u).d==2
        
        suggestions=[suggestions G.V(u)];
        
    endif
    
    G.V(u).color='B';
    
  endwhile
  
endfunction