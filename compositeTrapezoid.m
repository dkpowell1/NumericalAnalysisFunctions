function approx = compositeTrapezoid(f,a,b,n)
  h = (b-a)/n;
  s = f(a);
  for i = 1: n-1
    s = s + 2*f(a)
    a = a + h;
  end
  s = s + f(b);
  approx = (b - a) * s/(2*n);
end