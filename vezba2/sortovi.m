% Sortovi
% SelectionSort
% InsertionSort
% MergeSort
% QuickSort

clear;
clc;

disp("-> SelectionSort");
A=[5 12 65 21 1 3 4 2]
Sorted=SelectionSort(A)
disp("\n\n\n-> SelectionSort");
A=[5 12 65 21 1 3 4 2]
Sorted=InsertionSort(A)
disp("\n\n\n-> MergeSort");
A=[5 12 65 21 1 3 4 2]
Sorted=MergeSort(A)
disp("\n\n\n-> QuickSort");
A=[5 12 65 21 1 3 4 2]
Sorted=QuickSort(A,1,length(A))

