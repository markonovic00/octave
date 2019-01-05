% BFS

function path = BFS (G, s, idEnd,km)
  
  v=1:length(G.AdjMatrix);
  for u=v
    
    G.V(u).color='W';
    G.V(u).d = inf;
    G.V(u).pred=NaN;
    
  endfor
  
  G.V(s).color='W';
  G.V(s).d=0;
  G.V(s).pred=NaN;
  
  Q=[];
  Q=[Q s];
  
  while ~isempty(Q)
    
    u=Q(1);
    Q(1)=[];
    if u == idEnd
        path=[];
        temp = idEnd;
        while (temp~=s)
          if(G.V(u).daljina<=km)
            path = [temp path];
            temp = G.V(temp).pred;
          else
            disp("Ne moze da se dodje");
            return;
          endif
        endwhile
        path = [s path];
      return;
      
    else
    for v= find(G.AdjMatrix(u,:))
      
      if G.V(v).color=='W'
        G.V(v).daljina=G.AdjMatrix(u,v); % Dodao sam novo polje koje oznacava daljinu od pocetnog cvora do ostalih
        G.V(v).color='G';
        G.V(v).d = G.V(u).d+1;
        G.V(v).pred = u;
        Q=[Q v];
        
      endif
      
    endfor
    endif
    G.V(u).color='B';
    
  endwhile
  
endfunction