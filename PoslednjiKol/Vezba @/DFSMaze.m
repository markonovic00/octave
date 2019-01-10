% DFSMaze

function [path G]=DFSMaze(G,s)
  
  v=1:length(G.AdjMatrix);
  
  for u=v
    
    G.V(u).color='W';
    G.V(u).pred=NaN;
    
  endfor
  
  [path G]=DFS_Visit(G,s);
  
endfunction

function [path G] = DFS_Visit(G,u)
  
  G.V(u).color='G';
      path=[];
      
  if G.V(u).type=='C'
    
    path=[u];
    return;
    
  else
  
  for v=find(G.AdjMatrix(u,:))
    
    if G.V(v).color=='W' && G.V(v).type~='Z'
      
      G.V(v).pred=u;
      [path G]=DFS_Visit(G,v);
      
      if ~isnan(path)
        
        path=[u path];
        return;
        
      endif
      
    endif
    
  endfor
  
endif

G.V(u).color='B';
  
endfunction