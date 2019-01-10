% DFSIsland

function G = DFSIsland(G)
  
  global grupa;
  grupa=0;
  v=1:length(G.AdjMatrix);
  
  for u=v
    
    G.V(u).color='W';
    G.V(u).pred=NaN;
    
  endfor
  
  for u=v
    
    if G.V(u).color=='W'
      
      grupa=grupa+1;
      G=DFSI_Visit(G,u);
      
    endif
    
  endfor
  
endfunction

function G = DFSI_Visit(G,u)
  
  global grupa;
  G.V(u).color='G';
  G.V(u).prip=grupa;
  for v=find(G.AdjMatrix(u,:))
    
    if G.V(v).color=='W'
      
      G.V(v).pred=u;
      G=DFSI_Visit(G,v);
      
      
    endif
    
  endfor
  
  G.V(u).color='B';
  
endfunction