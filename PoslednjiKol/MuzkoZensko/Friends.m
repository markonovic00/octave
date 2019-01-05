% Friends

function G = Friends(G)
  
  ostrvo=0;
  global time;
  v=1:length(G.AdjMatrix);
  
  for u=v
    
    G.V(u).color='W';
    G.V(u).pred=NaN;
    
  endfor
  
  time=0;
  
  for u=v
    
    if G.V(u).color == 'W' && G.V(u).pol=='Z'
      
      ostrvo++;
      G=DFS_Visit(G,u,ostrvo);
      
    endif
    
  endfor
  
endfunction

function G= DFS_Visit(G,u,ostrvo)
  
  G.V(u).grupa=ostrvo;
  global time;
  time=time+1;
  
  G.V(u).color='G';
  G.V(u).d=time;
  
  for v=find(G.AdjMatrix(u, :))
    
    if G.V(v).color=='W' && G.V(v).pol=='Z'
      
      G.V(v).pred=u;
      G=DFS_Visit(G,v,ostrvo);
      
    endif
    
  endfor
  
  G.V(u).color='B';
  time=time+1;
  G.V(u).finish=time;
  
endfunction