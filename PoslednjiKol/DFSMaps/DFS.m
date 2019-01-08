% DFS

function G = DFS(G,s,idTr)
  
  path=[];
  global start;
  start=s;
  global time;
  v=1:length(G.AdjMatrix);
  for u=v
    
    G.V(u).color='W';
    G.V(u).pred=NaN;
    
  endfor
  
  time=0;
  
  G=DFS_Visit(G, s, idTr);
  
endfunction

function G = DFS_Visit(G,u,idTr)
  
  global time;
  global start;
  time=time+1;
  
  G.V(u).color='G';
  G.V(u).d=time;
  
  for v=find(G.AdjMatrix(u,:))
    
    if G.V(v).color=='W'
      
      G.V(v).pred=u;
      G = DFS_Visit(G,v, idTr);
      
      if v == idTr
        
        path=[];
        temp = idTr;
        while (temp ~= start)
          
          path=[temp path];
          temp=G.V(temp).pred;
          
        endwhile
        
        path=[start path]
        
      endif
      
    endif
    
  endfor
  
  G.V(u).color='W';
  time=time+1;
  G.V(u).finish=time;
  
endfunction