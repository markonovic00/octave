% Skripta

clc;
clear;

nbRows = 8;
nbColumns = 8;
% generisanje matrice susedstva za tablu
G.AdjMatrix = generateTableAdjMatrix(nbRows, nbColumns);
% definisanje tipova cvorova u grafu: put, zid i cilj i kovceg
G.nodeTypes = ['P' 'Z' 'C' 'K'];
% definisanje boje za odredjenu vrstu tipa cvora : belo, zeleno i plavo iz
% tabele boja
G.nodeTypeColorIDs = [1 11 10 15];
% definisanje tipa za odredjeni podskup cvorova iz grafa
G = defineNodesType(G, 1:length(G.AdjMatrix), 'P'); %put
G = defineNodesType(G, [5 9 10 11 13 15 21 23 24 26 28 29 31 ...
34 44 45 46 47 50 55 58 60 61 63], 'Z'); %zid
G = defineNodesType(G, [17 25 33 2 4 6 8 14 40 41 42 62 52],'K'); %kovceg
G = defineNodesType(G, [62], 'C'); %cilj

[path,Gp]=DFSGold(G,1);
path
plotTable(Gp);