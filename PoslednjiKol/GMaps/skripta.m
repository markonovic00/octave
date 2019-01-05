% Skripta za GMaps

clear;
clc;

matrix=[
0 3 0 0 41 93
3 0 51 95 5 0
0 51 0 0 83 61
0 95 0 0 0 92
41 5 83 0 0 99
93 0 61 92 99 0
];

G.AdjMatrix = matrix;
s=1;
Gp = BFS(G, s,3,51)