function ans = enpoint5point(f,x0,h)
	ans = (1/(12*h))*(-25*f(x0)+48*f(x0+h)-36*f(x0+2*h) + 16*f(x0+3*h)-3*f(x0+4*h));
end
