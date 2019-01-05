% pozivprimer94.m

clear;
clc;

G.AdjMatrix = [
  0 1 0 0 0 1 1;
  0 1 0 0 0 1 0;
  0 0 1 0 0 0 1;
  0 0 1 0 1 0 0;
  0 0 0 0 0 0 0;
  1 0 0 1 1 0 1;
  0 0 0 0 1 0 0
];

imena = {"Milan";"Filip";"Marko";"Milos";"Milan";"Dusan";"Goran";"Marko";"Veljko";"Milan"};
prezimena = {"Borjan"; "Stojkovic";"Gobeljic";"Degenek";"Rodic";"Jovancic";"Causic";"Marin";"Simic";"Pavkov"};

for i = 1:length(G.AdjMatrix)
 G.V(i).ime = imena{i};
 G.V(i).prezime = prezimena{i};
end

ime = 'Dusan';
prezime = 'Jovancic';

sugg=BFSSugg(G,ime,prezime);
sugg.ime
