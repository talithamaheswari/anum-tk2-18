function h = hessian_f(x,y)
  h(1,1) = 2 - ((y**2)*e**(x*y));
  h(1,2) = -1 - x*y*e**(x*y) - e**(x*y);
  h(2,1) = -1 - x*y*e**(x*y) - e**(x*y);
  h(2,2) = 2 - ((x**2)*e**(x*y));
endfunction