% Skripta

clc;
clear;

G.AdjMatrix = [
0 1 0 0 0 1 0;
0 0 0 1 0 1 0;
0 0 0 0 0 0 1;
1 0 1 0 0 0 0;
0 0 0 0 0 0 0;
0 0 0 0 1 0 1;
0 0 0 0 1 0 0];

s=1;
Gb=BFS(G,s);
%plotGraph(Gp);

Gd=DFS(G);
plotGraph(Gd);