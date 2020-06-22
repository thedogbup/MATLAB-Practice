clear, clc, format compact, close all
%==[Flowerbox]=================
%| Filename: DataAnalysis.m   |
%| Purpose: Analysis Practice |
%| bup                        |
%| 6/19/20                    |
%|____________________________|

in = readtable("Copy of ejscreen.csv");
% T = in(12:22 ,3:7);
figure('Name', 'EJScreen Sample', 'NumberTitle', 'Off', 'Color', 'black')
y = cell2mat(readcell('Copy of ejscreen.csv', 'Range', [14 4 24 5]));
title('Area EJ Statistics'); bar(y);
