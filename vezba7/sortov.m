% Sortovi
% SelectionSort
% InsertionSort
% QuickSort

clear;
clc;

A=[73 91 0 23 43 1 6 4 7 2 71]
disp("---------------------------------");
SelectionSort=SelectionSort(A)
disp("---------------------------------");
InsertionSort=InsertionSort(A)
disp("---------------------------------");
QuickSort=QuickSort(A,1,length(A))