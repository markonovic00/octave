% Simple BFS

function G = BFS (G, s)
  
  v=1:length(G.AdjMatrix);
  
  for u=v(v~=s)
    
    G.V(u).color='W';
    G.V(u).pred=NaN;
    G.V(u).d=inf;
    
  endfor
  
  G.V(s).color='W';
  G.V(s).pred=NaN;
  G.V(s).d=0;
  
  Q=[];
  Q=[Q s];
  
  while ~isempty(Q)
    
    u=Q(1);
    Q(1)=[];
    
    for v=find(G.AdjMatrix(u,:))
      
      if G.V(v).color=='W'
        
        G.V(v).color='G';
        G.V(v).d=G.V(u).d+1;
        G.V(v).pred=u;
        Q=[Q v];
        
      endif
      
    endfor
    
    G.V(u).color='B';
    
  endwhile
  
endfunction