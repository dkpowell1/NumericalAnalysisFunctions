function r = rhomberg(f,a,b,tol)
  n = 1;
  %I(1,1) = Trapezoid Method
  iter = 0;
  while error > tol
    iter = iter+1;
    n = 2^iter;
    %I(iter+1,1) = Trapezoid with new N 
    for k = 2: iter+1
      j = 2+iter-k;
      I(j,k) = (4^(k-1)*I(j+1,k-1)-I(j,k-1))/(4^(k-1)-1);
    end
    error = abs((I(1,iter+1)-I(2,iter))//I(1,iter+1))*100; 
  endwhile
  r = I(1,iter+1);
end