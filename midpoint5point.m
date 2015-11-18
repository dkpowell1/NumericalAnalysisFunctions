function ans = midpoint5point(f,x0,h)
	ans = (1/(12*h))*(f(x0-2*h)-8*f(x0-h)+8*f(x0+h)-f(x0+2*h));
end
