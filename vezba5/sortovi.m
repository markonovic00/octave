% Sortovi
% SelectionSort
% InsertionSort
% QuickSort
% MergeSort

% BinarySearch

clear;
clc;

A=[7 1 82 70 12 56 12 53 9 0 1 34 2 3]
disp("-------------------------------------------");
B=SelectionSort(A)
disp("-------------------------------------------");
C=InsertionSort(A)
disp("-------------------------------------------");
D=QuickSort(A,1,length(A))
disp("-------------------------------------------");
E=MergeSort(A)
disp("-------------------------------------------");
BinarySearch=BinarySearch(B,9)