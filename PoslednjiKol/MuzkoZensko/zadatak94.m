% zadatak94.m

function G = zadatak94(G)
 global brojac;
 global temp;
 brojac = 0;
 temp = 0;
 v = 1:length(G.AdjMatrix);
 for u = v
  G.V(u).color = 'W';
  G.V(u).pred = NaN;
 end
 for u = v
  if G.V(u).color == 'W'
   brojac = brojac + 1;
   temp = 0;
   G = DFS_visit(G,u);
  end
 end
end

function G = DFS_visit(G,u)
 global brojac;
 global temp;
 G.V(u).color = 'G';
 if G.V(u).pol == 'z' && temp==0
  temp = u;
 end
 
 for v = find(G.AdjMatrix(u,:))
  if G.V(v).color == 'W'
    if G.V(v).pol == 'Z'
      G.V(v).pred = temp;
      temp = v;
    end
   G = DFS_visit(G,v);
  end
 end
 G.V(u).color = 'B';
 G.V(u).grupa = brojac;
end
