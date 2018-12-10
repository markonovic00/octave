% Pretrage
% LinearSearch
% LinearSearchAll
% LinearSearchSentinel
% BinarySearch

clear;
clc;

disp("-> LinearSearch");
A=[ 1 4 2 5 6 2 1 7 5 3]
key=5;
fprintf("---> Key=%d \n",key);
ind=LinearSearch(A,key);
fprintf("---> Index=%d \n",ind);
disp("\n\n\n-> LinearSearchAll");
A
key=5;
fprintf("---> Key=%d \n",key);
ind=LinearSearchAll(A,key)
disp("\n\n\n-> LinearSearchSentinel");
A
key=5;
fprintf("---> Key=%d \n",key);
ind=LinearSearchSentinel(A,key);
fprintf("---> Index=%d \n",ind);
disp("\n\n\n-> BinarySearch");
B=[1 3 5 7 9 10 12 14 15]
key=9;
fprintf("---> Key=%d \n",key);
ind=BinarySearch(B,key);
fprintf("---> Index=%d \n",ind);
