% Niz struktura

clear;
clc;

studenti(1).brojIndeksa = 1;
studenti(1).ime='Marko Novic';
studenti(1).ocena=9;

studenti(2).brojIndeksa = 2;
studenti(2).ime='Saric';
studenti(2).ocena=7;

studenti(3).brojIndeksa = 3;
studenti(3).ime='Igor';
studenti(3).ocena=10;

studenti(4).brojIndeksa = 4;
studenti(4).ime='S9';
studenti(4).ocena=6;

studenti(5).brojIndeksa = 5;
studenti(5).ime='LG';
studenti(5).ocena=7;

tip=input("Unesite zeljeni tip:","s");
key=input("(Ako je tip string onda pod navodnike)Unesite kljuc:");

rez = linearSearchStruct(studenti,tip,key)

for k=1:length(rez)
  studenti(rez(k))
endfor  