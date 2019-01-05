%primer9_2.m
clc;
clear;
G.AdjMatrix = [
	0 1 0 0 0 1 1;
	0 0 0 0 0 1 0;
	0 0 0 0 0 0 1;
	0 0 1 0 1 0 0;
	0 0 0 0 0 0 0;
	0 0 0 1 1 0 1;
	0 0 0 0 1 0 0];

s = 1;
f = 3;

Gp = BFS(G, s)
path = getPath(Gp, s, f)

plotGraph(G, path)
