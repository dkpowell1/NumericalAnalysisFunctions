function [t,y] = modifiedEuler(f,a,b,y0,h)
	n = (b-a)/h;
	t = a:h:b;
	y = [];
	y(1) = y0;
	for i=1:n
		k1 = f(t(i),y(i));
		k2 = f(t(i)+h,y(i)+h*k1);
		ti = (1/2)*k1 + (1/2)*k2;
		y(i+1) = y(i) + h*ti;
	end
end