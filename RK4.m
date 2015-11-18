function [t,y] = RK4(f,a,b,y0,h)
  n = (b-a)/h;
	t = a:h:b;
	y = [];
	y(1) = y0;
	for i=1:n
		k1 = f(t(i),y(i));
		k2 = f(t(i)+(h/2),y(i)+(h/2)*k1);
    k3 = f(t(i)+(h/2),y(i)+(h/2)*k2);
    k4 = f(t(i)+h,y(i)+h*k3);
		ti = (1/6)*k1 + (1/3)*k2+(1/3)*k3 + (1/6)*k4;
		y(i+1) = y(i) + h*ti;
	end
end