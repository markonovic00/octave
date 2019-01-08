% DFS Potraga za blagom

function [path,G] = DFSGold(G,s)
  
  global start;
  path={};
  start=s;
  v=1:length(G.AdjMatrix);
  
  for u=v
    
    G.V(u).color='W';
    G.V(u).pred=NaN;
    
  endfor
  
  time=0;
  
  G=DFS_Visit(G,s);
  
endfunction


function G = DFS_Visit(G,u)
 
  global start;
  
  G.V(u).color='G';
  
  for v=find(G.AdjMatrix(u,:))
    
    if G.V(v).color=='W' && G.V(v).type~='Z'
      
      G.V(v).pred=u;
      G = DFS_Visit(G,v);
      
      if G.V(v).type=='C'
        
        path=[];
        temp = v;
        while (temp ~= start)
          
          path=[temp path];
          temp=G.V(temp).pred;
          
        endwhile
        
        path=[start path]
        
      endif
      
    endif
    
  endfor
  
  G.V(u).color='W';
  
endfunction