% DFSLavirint

function [path G] = DFSLavirint(G,s,f)
  
  v=1:length(G.AdjMatrix);
  
  for u=v
    
    G.V(u).color='W';
    G.V(u).pred=NaN;
    
  endfor
  
  [path G]=DFS_Visit(G,s,f);
  
endfunction

function [path G]=DFS_Visit(G,s,f)
  
  G.V(s).color='G';
  path=[];
  if s==f
    
    path=[s];
    return;
    
  endif
  
  for v=find(G.AdjMatrix(s,:))
    
    if G.V(v).color=='W' && G.V(v).type ~='Z'
    G.V(v).pred=s;
    [path G]=DFS_Visit(G,v,f);
    
    if ~isnan(path)
      
      path=[s path];
      return;
      
    endif
  
    endif
  endfor
  
  G.V(s).color='B';
  
endfunction