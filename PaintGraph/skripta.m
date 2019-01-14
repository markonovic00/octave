% Zadatak: Kreirati skriptu i funkciju ObojiGraf() koja treba da oboji graf u 4 boje,
% tako da svaki čvor bude obojen sa tačno jednom od 4 boje, a nijedna dva susedna
% čvora u grafu ne smeju biti obojena istom bojom.
%     Skripta je dužna da kreira graf sa bar 10 čvorova, pozove funkciju ObojiGraf() i
% prikaže tako dobijeni graf. Ukoliko to nije moguće, ispisati odgovarajuću poruku.
%     Funkcija ObojiGraf treba da bude realizovana kao modifikacija DFS algoritma,
% pri čemu se svakom čvoru dodeli neka od 4 boje, a ukoliko sa tom bojom nije
% moguće rešiti problem, promeniti boju, itd... Ukoliko nije moguće dati čvor obojiti
% nijednom od 4 boje, vratiti vrednost false.

clc;
clear;

G.AdjMatrix=[
0 1 1 1 0 0 0 0 0 0 0;
1 0 0 1 1 0 0 0 0 0 0;
1 0 0 1 0 1 0 0 0 0 0;
1 1 1 0 0 0 1 0 0 0 0;
0 1 0 0 0 0 1 1 0 0 1;
0 0 1 0 0 0 1 1 0 0 0;
0 0 0 1 1 1 0 1 0 0 0;
0 0 0 0 1 1 1 0 1 0 0;
0 0 0 0 0 0 0 1 0 1 0;
0 0 0 0 0 0 0 0 1 0 0;
0 0 0 0 1 0 0 0 0 0 0;
];

%Gp=DFS_Paint(G);
[bool, Gp]=Rainbow(G);
if bool==true
  
  plotGraph(Gp);
  
endif