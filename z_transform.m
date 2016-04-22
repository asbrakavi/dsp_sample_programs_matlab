clc;
close all;
clear all;
syms 'n';
syms 'z';
x=input('Input the sequence to be converted');

for i=-1:6
   j=i+2;
   a(j)=x(j)*z^(-i); 
end

disp(a); 