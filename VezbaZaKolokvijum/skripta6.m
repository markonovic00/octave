%Skripta 6. zadatak

clear;
clc;

load studenti.mat

ispis(studenti);
count = LinearSearchAll(studenti,12)
count1 = LinearSearchAll(studenti,13)
fprintf("Broj studenata sa 12 i 13 poena je %d\n",count+count1)
A=QuickSort(studenti,1,length(studenti));
ispis(A);