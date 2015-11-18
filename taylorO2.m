function [t,y] = taylorO2(f,dfdt,a,b,y0,h)
	n = (b-a)/h;
	t = a:h:b;
	y = [];
	y(1) = y0;
	for i=1:n
		ti = f(t(i),y(i)) + (h/2)*dfdt(t(i),y(i));
		y(i+1) = y(i) + h*ti;
	end
end