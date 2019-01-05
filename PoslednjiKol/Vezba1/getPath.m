% GetPath

function path = getPath(G, idStart, idEnd)
  
  path = [];
  temp = idEnd;
  
  while (temp ~= idStart)
    
    path = [temp path];
    temp = G.V(temp).pred;
    
  endwhile
  
  path = [idStart path];
  
endfunction