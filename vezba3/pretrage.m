% Pretrage

% LinearSearch

% LinearSearchAll

% LinearSearchSentinel

% BinarySearch

clear;
clc;

A=[9 8 16 7 15 62 25 25 25 34 25 71 46 90 100 256 285]
disp("---------------------------------------");
LinearSearch=LinearSearch(A,25)
disp("---------------------------------------");
LinearSearchAll=LinearSearchAll(A,25)
disp("---------------------------------------");
LinearSearchSentinel=LinearSearchSentinel(A,100)
disp("---------------------------------------");
B=[1 3 5 7 9 11 16 79 100]
disp("---------------------------------------");
BinarySearch=BinarySearch(B,11)
