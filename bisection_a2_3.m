function [x,n] = bisection_a2_3(a,b,tol)
  n = 0;
  fa = a^7 + 6*a^6 + 2*a^5 - 35*a^4 - 19*a^3 + 72*a^2 - 27;
  fb = b^7 + 6*b^6 + 2*b^5 - 35*b^4 - 19*b^3 + 72*b^2 - 27;
  while b-a>tol
    m = (a+b)/2;
    fm = m^7 + 6*m^6 + 2*m^5 - 35*m^4 - 19*m^3 + 72*m^2 - 27;
    if fm*fa<0
      b = m;
      fb = fm;
    else
      a = m;
      fa = fm;
    end
    n = n+1;
  endwhile
  x = m;
endfunction
