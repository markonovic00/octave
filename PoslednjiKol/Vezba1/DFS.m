% DFS

function G = DFS(G)
  
  global time;
  v = 1:length(G.AdjMatrix);
  
  for u=v
    
    G.V(u).color='W';
    G.V(u).pred=NaN;
    
  endfor
  
  time=0;
  
  for u=v
    
    if G.V(u).color=='W'
      
      G = DFS_Visit(G,u);
      
    endif
    
  endfor
  
endfunction

function G = DFS_Visit(G,u)
  
  global time;
  time=time+1;
  
  G.V(u).color='G';
  G.V(u).d=time;
  
  for v=find(G.AdjMatrix(u,:))
    
    if G.V(v).color=='W'
      
      G.V(v).pred=u;
      G = DFS_Visit(G,v);
      
    endif
    
  endfor
  
  G.V(u).color='B';
  time=time+1;
  G.V(u).f=time;
  
  
endfunction