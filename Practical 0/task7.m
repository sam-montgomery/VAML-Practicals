clear all;
close all;

input = [0 0 0 0; 0 0 0 0];
output = searchingZeros(input);
input(6);

l = rand(1000, 1000);
l2 = rand(1000, 1000);

tic
A = addOne(l);
toc

tic 
B = addOneWithFors(l2);
toc

