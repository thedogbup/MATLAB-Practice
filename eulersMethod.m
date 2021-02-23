%==[Flowerbox]=================
%| Filename: eulersMethod.m   |
%| Purpose: ODE 2.6 Homework  |
%| bup                        |
%| 2/22/21                    |
%|____________________________|

function out = eulersMethod(xi, yi, xf, h, deriv)
	xn = xi:h:xf;
	yn = zeros(size(xn));
	yn(1) = yi;
	
    for r = 1:(size(yn, 2) - 1)
		yn(r + 1) = yn(r) + h * deriv(xn(r), yn(r));
    end
	
	out = [xn; yn];
end

% This method allows you to use Euler's method to approximate a solution 
% given a differential equation, initial condition, and step size.
% 
% Params: 
%   (xi, yi) is the initial condition/a known solution.
%   xf is the x-value of the solution you are trying to approximate.
%   h is the step size.
%   deriv is an anonymous function that takes in a DE as a formula.
%
% For example, to obtain an approximation of y(2.5) of the following DE 
% y' = 0.1sqrt(y) + 0.4x^2, with IC y(2) = 4, and step size 0.1, the 
% input will be the following:
% >> eulersMethod(2, 4, 2.5, 0.1, @(x, y) 0.1 * sqrt(y) + 0.4 * x.^2)
%
% It's important to note that the deriv param has a special notation, 
% called the anonymous function. It is important to keep the @(x, y)
% clause to ensure the function knows you are dealing with two 
% mathematic parameters. Otherwise, I don't think it would work.
% If you were to solve a function like y' = x, then the anon function 
% will just be @(x, y)x.


