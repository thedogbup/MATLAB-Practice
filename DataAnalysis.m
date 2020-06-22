clear, clc, format compact, close all
%==[Flowerbox]=================
%| Filename: DataAnalysis.m   |
%| Purpose: Analysis Practice |
%| bup                        |
%| 6/19/20                    |
%|____________________________|

figure('Name', 'EJScreen Sample', 'NumberTitle', 'Off')
raw = cell2mat(readcell('Copy of ejscreen.csv', 'Range', [14 4 24 5]));
y = ((raw(1:end / 2).') - (raw(end / 2 + 1:end).')) ./ (raw(end / 2 + 1:end).') .* 100;
bar(y); title('Area EJ Statistics'); ylabel('% Difference from State Average');
xtickangle(90);
grid on;
set(gca, 'XTickLabels', readcell('Copy of ejscreen.csv', 'Range', [14 3 24 3]));