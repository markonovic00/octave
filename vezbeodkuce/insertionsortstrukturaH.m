% insertionsortstrukturaH

clear;
clc;
disp("----------Pre sortiranja---------");
student(1).ime="Marko";
student(1).brIndeksa=139;

student(2).ime="Jasna";
student(2).brIndeksa=10;

student(3).ime="Igor";
student(3).brIndeksa=149;


student(4).ime="Mihajlo";
student(4).brIndeksa=144;

student(5).ime="Juzni";
student(5).brIndeksa=2;

student(6).ime="Vetar";
student(6).brIndeksa=1;

ispisStrukture(student);

disp("----------Posle sortiranja---------");
sortirani=insertionSortStruktura(student);
ispisStrukture(sortirani);