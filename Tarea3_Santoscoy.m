close all;
clear all;
clc;

datos = load('data.dat');
scatter(datos(:,1), datos(:,2), 5, 'filled')
