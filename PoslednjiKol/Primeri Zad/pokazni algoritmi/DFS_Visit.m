function G = DFS_Visit(G, u)
	global time;
	time = time + 1;
	G.V(u).d = time;
	G.V(u).color = 'G';

	clc
	plotGraph(G)
	pause

	for v = find(G.AdjMatrix(u,:))
		
		if G.V(v).color == 'W'
			clc
			u
			v
			G.V(v).pred = u;
			G = DFS_Visit(G, v);
		end
	end

	G.V(u).color = 'B';
	time = time + 1;
	G.V(u).f = time;
	
	clc
	u	
	plotGraph(G)
	pause;
end

