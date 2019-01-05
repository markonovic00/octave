% Primer7.1

clear;
clc;

load studenti.mat

studentiispis(studenti);
A=InsertionSortStudenti(studenti);
studentiispis(A);