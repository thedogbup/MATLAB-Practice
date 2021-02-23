%==[Flowerbox]=================
%| Filename: eulersMethod.m   |
%| Purpose: ODE 2.6 Homework  |
%| bup                        |
%| 2/22/21                    |
%|____________________________|

function out = eulersMethod(xi, yi, xf, h, deriv)
	nmax = (xf - xi) / h;
	
	xn = xi:h:xf;
	yn = zeros(size(xn));
	yn(1) = yi;
	
	for r = 1:(size(yn, 2) - 1)
		yn(r + 1) = yn(r) + h * deriv(xn(r), yn(r));
	endfor
	
	out = [xn; yn];
end