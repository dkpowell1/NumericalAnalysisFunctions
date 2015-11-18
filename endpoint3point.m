function ans = endpoint3point(f,x0,h)
	ans = (1/(2*h))*(-3*f(x0)+4*f(x0+h)-f(x0+2*h));
end
