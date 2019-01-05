clear;
clc
fid = fopen('accounts.txt');
i=0;

tline = fgetl(fid);
while ischar(tline)
    i = i+1;
    C = strsplit(tline, ' ');
    people(i).prezime = C{1};
    people(i).ime = C{2};
    people(i).pol = C{3};
    tline = fgetl(fid);
end
fclose(fid);

G.V = people;
t = triu(rand(i)>0.96, 1);
G.AdjMatrix =  t + t';
clear people t tline C ans fid i

Gp = zadatak94(G);
plotGraph(Gp);