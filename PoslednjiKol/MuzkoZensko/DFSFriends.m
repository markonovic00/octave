% Napisati funkciju koja grupiše sve korisnike ženskog pola tako da se u svakoj grupi može
% doći od jedne do druge korisnice vezama prijateljstava. Zadatak uraditi tako da se strukturi koja
% predstavlja korisnika doda polje koje označava pripadnosti grupi (ostrvu).

function G = DFS (G, s)
  
  global time;
  v= 1:length(G.AdjMatrix);
  
  for u=v
    
    G.V(u).color='W';
    G.V(u).pred=NaN;
    
  endfor
  
  time=0;
  
  for u=v
    
    if G.V(u).color =='W'
      
      G=DFS_Visit(G,u);
      
    endif
    
  endfor
  
endfunction

function G = DFS_Visit(G,u)
  
  global time;
  time=time+1;
  
  G.V(u).d=time;
  G.V(u).color='G';
  
  for v= find(G.AdjMatrix(u,:))
    
    if G.V(v).color == 'W'
      
      G.V(v).pred=u;
      G=DFS_Visit(G,v);
      
    endif
    
  endfor
  
  G.V(u).color='B';
  time=time+1;
  G.V(u).f=time;
  
endfunction