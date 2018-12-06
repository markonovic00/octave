%Ovde pozivamo sve pretrage koje ce doci na kolokvijum
% 1. LinearSearch linearna pretraga
% 2. LinearSearchAll linearna pretraga za sve elemente
% 3. LinearSearchSentinel linearna pretraga sa strazarem
% 4. BinarySearch binarna pretraga
% 5. BinarySearchLessOrEqual ovo ide mozda nemam pojma...

clear;
clc;

disp("-------------NIZ------------");
A=[4 1 2 4 5 6 2 9 7 8]
disp("-------------LINEARNA------------");
key=4
indeks=LinearSearch(A,key)
disp("-------------LINEAR ALL------------");
key=4
indeksi=LinearSearchAll(A,key)
disp("-------------LINEAR SENTINEL---------");
key=2
indeks=LinearSearchSentinel(A,key)
disp("---------NIZ MORA BITI SORTIRAN-----");
disp("------------BINARY---------------");
A=[ 2 3 7 9 10 15 26 43]
key=7
indeks=BinarySearch(A,key)
disp("---BinarySearchLessOrEqual-----------");
key=6
indeks=BinarySearchLessOrEqual(A,key)