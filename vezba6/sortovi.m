% Sortovi
% InsertionSort
% QuickSort
% SelectionSort
% BinarySearch

clear;
clc;

A=[63 10 92 81 3 17 26 43 51 0 9 6 3]
disp("------------------------------------");
InsertionSort=InsertionSort(A)
disp("------------------------------------");
QuickSort=QuickSort(A,1,length(A))
disp("------------------------------------");
SelectionSort=SelectionSort(A)
disp("------------------------------------");
BinarySearch=BinarySearch(SelectionSort,26)