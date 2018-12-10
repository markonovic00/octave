% Ovde su svi sortovi za kolokvijum
% InsertionSort
% MergeSort

clear;
clc;

A=[4 5 1 3 7 5 3 8 9 6 7]
disp("----------INSERTION SORT----------");
A=InsertionSort(A)
disp("-----------------------------------------");
B=[6 8 6 1 9 0 5 3 7 0 2]
disp("----------MERGE SORT CUSTOM----------");
B=MergeSortM(B)
disp("-----------------------------------------");
C=[7 1 93 47 83 0 1 8 7 4 5 7 67]
disp("----------QUICK SORT-----------------");
C=QuickSort(C,1,length(C))
disp("-----------------------------------------");
D=[7 1 93 47 83 0 1 8 7 4 5 7 67]
disp("----------SelectionSort-----------------");
D=SelectionSort(D)