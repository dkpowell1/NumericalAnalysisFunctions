function [ans] = compositeSimpsons(f,a,b,n)
	numIterations = n/2 - 1;
	h = (b-a)/n;
	x = a:h:b;
	partOne = 0;
	for i = 1: numIterations
		partOne = partOne + f(x(2*i+1));
	endfor
	partTwo = 0;
	for j = 0: numIterations
		partTwo = partTwo + f(x(2*j+2));
	endfor
	ans = (h/3)*(f(a)+2*partOne+4*partTwo+f(b));
end