%primer9_1.m
clc;
clear;
G.AdjMatrix = [
	0 1 0 0 0 1 1;
	0 0 0 0 0 1 0;
	0 0 0 0 0 0 1;
	0 0 1 0 1 0 0;
	0 0 0 0 0 0 0;
	0 0 0 1 1 0 1;
	0 0 0 0 1 0 0;];
s = 1;
G = BFS(G, s)
plotGraph(G)

