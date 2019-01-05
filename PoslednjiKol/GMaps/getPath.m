% getPath

function path = getPath(G, start, finish)
  
  path=[];
  temp = finish;
  while (temp ~= start)
    
    path=[temp path]
    temp=G.V(temp).pred;
    
  endwhile
  
  path=[start path];
  
endfunction