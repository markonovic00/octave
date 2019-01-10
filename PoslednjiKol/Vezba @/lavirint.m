% lavirint

clc;
clear;

nbRows = 8;
nbColumns = 8;
% generisanje matrice susedstva za tablu
G.AdjMatrix = generateTableAdjMatrix(nbRows, nbColumns);
% definisanje tipova cvorova u grafu: put, zid i cilj
G.nodeTypes = ['P' 'Z' 'C'];
% definisanje boje za odredjenu vrstu tipa cvora : belo, zeleno i plavo iz
% tabele boja
G.nodeTypeColorIDs = [1 11 10];
% definisanje tipa za odredjeni podskup cvorova iz grafa
G = defineNodesType(G, 1:length(G.AdjMatrix), 'P'); %put
G = defineNodesType(G, [5 9 10 11 13 15 21 23 24 26 28 29 31 ...
34 44 45 46 47 50 55 58 60 61 63], 'Z'); %zid
G = defineNodesType(G, [62], 'C'); %cilj

path=BFSMaze(G,1)
[path Gp]=DFSMaze(G,1);
path
plotTable(Gp);