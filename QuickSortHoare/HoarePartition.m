
clc;
clear;

%A=[73 91 0 23 43 1 6 4 7 2 71]
%disp("---------------------------------");
%QuickSort = QuickSortHoare(A)
%disp("---------------------------------");
%Random array generator
A = 1; B = 100;
randomArray = (A-1) + (B-(A-1))*rand(1,30);
Niz = floor(randomArray) + 1
disp("---------------------------------");
QuickSort=QuickSortHoare(Niz)