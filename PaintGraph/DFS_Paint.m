% DFS
% 'O' 'T' 'M' 'P'

function G=DFS_Paint(G)
  
  global colors;
  colors=['O' 'T' 'M' 'P'];
  v=1:length(G.AdjMatrix);
  
  for u=v
    
    G.V(u).col='W';
    G.V(u).color=colors(1);
    G.V(u).pred=NaN;
    
  endfor
  
  
  for u=v
    
    if G.V(u).col=='W'
      
      G = DFS_Paint_Visit(G,u);
      
    endif
    
  endfor
  
endfunction


function G = DFS_Paint_Visit(G,u)
  
  global colors;
  G.V(u).col='G';
  cbr=0;
  for v=find(G.AdjMatrix(u,:))
    
    if G.V(v).col=='W'
      
      G.V(v).pred=u;
      
      if G.V(u).color~=G.V(v).color && count > 2
        
        G=DFS_Paint_Visit(G,v);
        
      endif
      while G.V(u).color==G.V(v).color
        
        cbr++;
        if cbr==5
          
          disp("Nemoguce");
          return;
          
        endif
        
        G.V(v).color=colors(cbr);
        
      endwhile
      
    endif
    
  endfor
  
  G.V(u).col='W';
  
endfunction