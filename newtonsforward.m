function ans = newtonsforward(f,x0,h,n)
	x = zeros(n);
	for i = 0:n
		x(i+1) = x0 + i*h;
	end
	for i = 0:n
		 ans(i+1) = delta(f,x,i,0)/(h^i*factorial(i));
	end
end
