% Zadatak74

clear;
clc;

load studenti.mat

studentiispis(studenti);

A=MergeSortStudenti(studenti);

B=SelectionSortStudenti(studenti);

C=QuickSort(studenti,1,length(studenti));
disp("MergeSortStudenti");
studentiispis(A);
disp("SelectionSortStudenti");
studentiispis(B);
disp("Quick");
studentiispis(C);
D=SelectionSort(studenti);
studentiispis(D);
E=InsertionSort(studenti);
studentiispis(E);

ind = BinarySearch(C,139)
in1= LinearSearchSentinel(studenti, 1)