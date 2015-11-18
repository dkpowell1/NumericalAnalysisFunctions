function output = simpsonsOneLine(f,a,b)
	output = ((b-a)/6)*(f(a)+(4*f((a+b)/2))+f(b));
end	