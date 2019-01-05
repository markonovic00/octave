%Sortovi

% SelectionSort

% InsertionSort

% QuickSort

% MergeSort

clear;
clc;

A=[9 8 16 7 15 62 25 34 71 46 90 100 256 285]
disp("---------------------------------------");
B=SelectionSort(A)
disp("---------------------------------------");
C=InsertionSort(A)
disp("---------------------------------------");
D=QuickSort(A,1,length(A))
disp("---------------------------------------");
E=MergeSort(A)

