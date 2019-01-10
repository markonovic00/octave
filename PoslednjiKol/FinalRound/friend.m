% friends

clc;
clear;


G.AdjMatrix=[
0 1 1 0 0 1 0
1 0 0 0 0 0 1
1 0 0 1 1 1 0
0 0 1 0 0 0 0
0 0 1 0 0 1 1
1 0 1 0 1 0 0
0 1 0 0 1 0 0
];

ime={"Marko"; "Igor"; "Mihajlo"; "Jasna"; "Sale"; "KSI"; "A"};
prezime={"Nov"; "Nin"; "Sar"; "Tik"; "Tos"; "JJ"; "J"};

for u=1:length(G.AdjMatrix)
  
  G.V(u).ime=ime{u};
  G.V(u).prezime=prezime{u};
  
endfor


[suggestions Gp]=BFSFriends(G,"Marko","Nov");
plotGraph(Gp);
suggestions