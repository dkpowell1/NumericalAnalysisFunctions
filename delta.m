function [ans] = delta(f,x,k,n)
	if(k == 0)
		ans = f(x(n+1));
	else
		ans = delta(f,x,k-1,n+1) - delta(f,x,k-1,n);
	end
end
