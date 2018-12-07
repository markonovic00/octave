%pozivanje skripti

clear;
clc;

studenti(1).ime = "Marko Novic";
studenti(1).brIndeksa = 139;

studenti(2).ime = "Majdan Majdic";
studenti(2).brIndeksa = 140;

studenti(3).ime = "Nikola Nikolic";
studenti(3).brIndeksa = 115;

studenti(4).ime = "Mihajlo Miki";
studenti(4).brIndeksa = 12;

studenti(5).ime = "Igor Igi";
studenti(5).brIndeksa = 189;

studenti(6).ime = "Petar Peric";
studenti(6).brIndeksa = 9;

ispisStruct(studenti);
disp("--------POSLE---------");
ispisStruct(mergeSort(studenti));
