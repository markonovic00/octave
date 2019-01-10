% BFSLavirint

function [path G] = BFSLavirint(G,s,f)
  
  v=1:length(G.AdjMatrix);
  for u=v
    
    G.V(u).color='W';
    G.V(u).d=inf;
    G.V(u).pred=NaN;
    
  endfor
  
  path=[];
  G.V(s).d=0;
  
  Q=[];
  Q=[Q s];
  
  while ~isempty(Q)
    
    u=Q(1);
    Q(1)=[];
    
    if u==f
      
      temp=f;
      while temp~=s
        
        path=[temp path];
        temp=G.V(temp).pred;
        
      endwhile
      
      path=[s path];
      
    else
      
      for v=find(G.AdjMatrix(u,:))
        
        if G.V(v).color=='W' && G.V(v).type ~= 'Z'
          
          G.V(v).color='G';
          G.V(v).pred=u;
          G.V(v).d=G.V(u).d+1;
          Q=[Q v];
          
        endif
        
      endfor
      
    endif
    
    G.V(u).color='B';
    
  endwhile
  
endfunction