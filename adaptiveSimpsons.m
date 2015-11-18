function [output,x] = adaptiveSimpsons(f,a,b,tol,points)
	mid = (a+b)/2;
	composite = simpsonsOneLine(f,a,mid)+simpsonsOneLine(f,mid,b);
	err = (1/15)*abs(simpsonsOneLine(f,a,b)-composite);
	if err < tol
		output = composite;
		x = [points,a,((a+b)/2),b];
	else 
		[output1,x1] = adaptiveSimpsons(f,a,mid,tol/2,points);
		[output2,x2] = adaptiveSimpsons(f,mid,b,tol/2,points);
		output = output1 + output2;
		x = [x1,x2];
	endif
	x = unique(x);
end