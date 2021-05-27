function g = nabla_g(w,x,y,z)
  g(1) = -2w + x + 1;
  g(2) = -2x + y + w + 2;
  g(3) = -2y + z + x + 2;
  g(4) = -2z + y + 1;
  g=g';
endfunction