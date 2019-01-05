%Skripta za zadatak 6.5

clear;
clc;

load studenti.mat

studentiispis(studenti);
opseg=[9, 10]
ind= LinearSearchBetween(studenti,opseg)
PrikaziStudente(studenti,ind);