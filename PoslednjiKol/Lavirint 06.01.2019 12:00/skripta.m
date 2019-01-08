% Skripta za lavirint

clear;
clc;

G.AdjMatrix=generateTableAdjMatrix(5,5);
G = defineNodesType(G,1:length(G.AdjMatrix), 'P'); %Postavimo sve na put pa sada tek zidove
G = defineNodesType(G,[4 7 9 16 18 19 20],'Z'); % Postavljeni su zidovi

Gp=BFSMaze(G,1);
path=getPath(Gp,1,25);
plotTable(Gp,path);