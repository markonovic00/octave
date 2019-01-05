% Skripta

clc;
clear;
G.AdjMatrix = [
0 1 0 0 0 1 1;
0 0 0 1 0 1 0;
0 0 0 0 0 0 1;
0 0 1 0 1 0 0;
0 0 0 0 0 0 0;
0 0 0 1 1 0 1;
0 0 0 0 1 0 0];
s = 1;
%Gp = BFS(G, s); %BFS vraca pretrazen graf
%plotGraph(Gp); 

%putanja=getPath(Gp,s,5)

Gd = DFS(G, s);
plotGraph(Gd);
putanja2=getPath(Gd,s,5);