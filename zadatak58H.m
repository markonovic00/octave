%Skripta za 58

clear;
clc;

d = input("Unesite dimenziju matrica: ");

A = ceil(rand(d)*10)
B = magic(d)

[m,s]=zadatak58(A,B)