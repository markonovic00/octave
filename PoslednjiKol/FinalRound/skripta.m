% skripta

clc;
clear;

G.AdjMatrix = [
0 1 0 0 0 0 0;
0 0 0 1 0 0 0;
0 0 0 0 0 0 0;
1 0 1 0 0 0 0;
0 0 0 0 0 0 0;
0 0 0 0 0 0 1;
0 0 0 0 0 0 0];

v=1:length(G.AdjMatrix)
ocene=[6 7 8 6 7 8 9];
for u=v
  
  G.V(u).ocena=ocene(u);
  
endfor

Gp=DFSIsland(G);
plotGraph(Gp);