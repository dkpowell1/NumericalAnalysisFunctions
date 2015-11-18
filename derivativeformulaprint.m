function void = derivativeformulaprint(f,fprime,x0,h)
	actual = fprime(x0);
	midpoint3 = midpoint3point(f,x0,h);
	endpoint3 = endpoint3point(f,x0,h);
	midpoint5 = midpoint5point(f,x0,h);
	endpoint5 = endpoint5point(f,x0,h);
	disp ("f\'(x0):"), disp (actual)
	disp("Midpoint 3-point: "), disp(midpoint3);
	disp("Relative Error = "),disp(abs(actual-midpoint3)/abs(actual));
	disp("Endpoint 3-point: "),disp(endpoint3);
	disp("Relative Error = "),disp(abs(actual-endpoint3)/abs(actual));
	disp("Midpoint 5-point: "),disp(midpoint5);
	disp("Relative Error = "),disp(abs(actual-midpoint5)/abs(actual));
	disp("Endpoint 5-point: "),disp(endpoint5);
	disp("Relative Error = "),disp(abs(actual-endpoint5)/abs(actual));
end
