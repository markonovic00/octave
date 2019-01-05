% Pozivanje Alogirtama za prolazenje kroz graf...

clc;
clear;
G.AdjMatrix = [
0 1 0 0 0 1 0;
0 0 0 1 0 1 0;
0 0 0 0 0 0 1;
0 0 1 0 1 0 0;
0 0 0 0 0 0 0;
0 0 0 1 1 0 1;
0 0 0 0 1 0 0];
s = 1;
Gp = BFS(G, s); %BFS vraca pretrazen graf
plotGraph(Gp);
