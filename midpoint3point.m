function [ans] = midpoint3point(f,x0,h)
	ans = (1/(2*h))*(f(x0+h)-f(x0));
end
