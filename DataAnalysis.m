clear, clc, format compact, close all
%==[Flowerbox]=================
%| Filename: DataAnalysis.m   |
%| Purpose: Analysis Practice |
%| bup                        |
%| 6/19/20                    |
%|____________________________|

in = readtable("Copy of ejscreen.csv");
T = in(12:29 ,2:10);
figure('Name', 'EJScreen Sample', 'NumberTitle', 'Off', 'Color', 'black')