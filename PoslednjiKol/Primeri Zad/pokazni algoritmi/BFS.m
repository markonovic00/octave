function G = BFS(G, s)
	v = 1:length(G.AdjMatrix);

	for u = v(v~=s)
		G.V(u).color = 'W';
		G.V(u).d = Inf;
		G.V(u).pred = NaN;
	end

	G.V(s).color = 'W';
	G.V(s).d = 0;
	G.V(s).pred = NaN;

	plotGraph(G)
	Q = [];
	Q = [Q s]
	pause;

	while ~isempty(Q)
		clc
		u = Q(1)
		Q(1) = []
		pause

		for v = find(G.AdjMatrix(u,:))			
			if G.V(v).color == 'W'
				G.V(v).color = 'G';
				G.V(v).d = G.V(u).d + 1;
				G.V(v).pred = u;
				
				clc;
				v
				Q = [Q v]
				plotGraph(G)
				pause;
			end
		end
		G.V(u).color = 'B';
		plotGraph(G)
		pause;
	end
end

