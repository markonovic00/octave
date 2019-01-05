function G = DFS(G)
	global time;
	v = 1:length(G.AdjMatrix);

	for u = v
		G.V(u).color = 'W';
		G.V(u).pred = NaN;
	end
	plotGraph(G)
	pause

	time = 0;
	for u = v
		if G.V(u).color == 'W';
			clc
			u
			G = DFS_Visit(G, u);
		end
	end
end

