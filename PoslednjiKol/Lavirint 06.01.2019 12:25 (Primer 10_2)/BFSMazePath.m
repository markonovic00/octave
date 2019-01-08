% BFSMazePath

function [G, path] = BFSMazePath(G, s)
  
  v=1:length(G.AdjMatrix);
  for u=v(v~=s)
    
    G.V(u).color='W';
    G.V(u).d=inf;
    G.V(u).pred=NaN;
    
  endfor
  
  G.V(s).color='W';
  G.V(s).d=0;
  G.V(s).pred=NaN;
  
  path=[];
  
  Q=[];
  Q=[Q s];
  
  while ~isempty(Q)
    
    u=Q(1);
    Q(1)=[];
    
    if G.V(u).type=='C'
      
      temp=u;
      
      while s~=temp
        
        path=[temp path];
        temp=G.V(temp).pred;
        
      endwhile
      
      path=[s path];
      return; %OBAVEZNO !!!!
      
    else
      
      for v=find(G.AdjMatrix(u,:))
        
        if G.V(v).color=='W' && G.V(v).type~='Z'
          
          G.V(v).color='G';
          G.V(v).d=G.V(u).d+1;
          G.V(v).pred=u;
          Q=[Q v];
          
        endif
        
      endfor
      
    endif
    
    G.V(u).color='B';
    
  endwhile
  
endfunction