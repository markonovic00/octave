% Pretrage
% LinearSearch
% LinearSearchAll
% LinearSearchSentinel
% BinarySearch
% BinarySearchLessOrEqual modifikovani binary search da nadje manjeg ako ne postoji odgovarajuci

clear;
clc;

A=[ 1 3 5 7 3 6 8 5 3 9 8 0]

disp("------------------LINEAR----------------");
key=5
indeks=LinearSearch(A,key)
disp("------------------ALL-------------------");
key=5
indeksi=LinearSearchAll(A,key)
disp("------------------SENTINEL--------------");
key=8
indeksi=LinearSearchSentinel(A,key)
disp("----------------------------------------");
B=[ 2 4 6 7 9 10 15 22 26]
disp("----------------BINARY------------------");
key=7
indeks=BinarySearch(B,key)
disp("----------------LESSOREQUAL------------------");
key=8
indeks=BinarySearchLessOrEqual(B,key)
