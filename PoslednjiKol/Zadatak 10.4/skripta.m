% Skripta

clc;
clear;

% primer10_1.m
clc;
clear;
% inicjalizujemo podatke u grafu
nbRows = 5;
nbColumns = 5;
G.AdjMatrix = generateTableAdjMatrix(nbRows, nbColumns);
G.nodeTypes = ['P' 'Z' 'C'];
G = defineNodesType(G,[1 2 3 5 6 8 10 11 12 13 14 15 17 21 22 23 24 25],'P'); %PUT
G = defineNodesType(G, [4 7 9 16 18 19 20], 'Z'); %ZID
G = defineNodesType(G, [25],'C'); %CILJ
G.nodeTypeColorIDs = [1 11 10];

[path,Gp]=DFSGold(G,1);
path
plotTable(Gp);