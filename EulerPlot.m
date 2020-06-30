clear, clc, format compact, close all
%==[Flowerbox]=================
%| Filename: EulerPlot.m      |_____
%| Purpose: Plotting to plot Euler |
%| bup                        _____|
%| 6/27/20                    |
%|____________________________|

y = zeros(17);
y(1) = 1;

for i = 2:17
    y(i) = y(i - 1) + 1 / (16 * y(i - 1));
end
x = linspace(0, 1, 17);
subplot(1, 2, 1);
plot(x, y, '-g', x, sqrt(2 * x + 1), '-b')
subplot(1, 2, 2)
plot(x, abs(sqrt(2 * x + 1) - y), 'mx')