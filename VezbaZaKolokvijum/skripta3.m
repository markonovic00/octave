% Skripta 3. zadatak

clear;
clc;

A=[5 13 2 3 7 31 42 32 35 37 38]
A=InsertionSort(A)
ind1=BinarySearch(A,32)
ind2=BinarySearch(A,42)
rastojanje=abs(ind2-ind1)
