% BFS lavirint i putanja all in one

function path = BFSMaze(G,s)
  
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
    
    if G.V(u).type=='C'
      
      path=[];
      temp=u;
      
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