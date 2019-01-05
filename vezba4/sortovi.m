% Sortovi
% InsertionSort
% SelectionSort
% MergeSort
% QuickSort

clear;
clc;

A=[9 8 6 3 10 15 73 32 41 12]
disp("-------------------------------");
B=InsertionSort(A)
disp("-------------------------------");
C=SelectionSort(A)
disp("-------------------------------");
D=QuickSort2(A,1,length(A))
disp("-------------------------------");
ind=BinarySearch(D,6)