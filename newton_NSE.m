function x = newton_NSE(x0, TOL, MAX_ITER)
  % x: initial guess value as a vector of n elements
  % TOL: error tolerance
  % MAX_ITER: max number of iteration
  % Return: solution of Non-linear System of Equations
  
  x = x0';
  iter = 0;
  
  while (norm(spnl_func(x)) > TOL && iter < MAX_ITER)
    % masukkan tebakan awal ke fungsi F(u,v,w) dan J(u,v,w)
    f_val = spnl_func(x)
    j_val = jacobi_func(x)
    
    % selesaikan spl J(u,v,w)d = -F(u,v,w)
    d = j_val\-f_val;
    
    printf("Iteration %d results:\n", iter);
    x = x + d
    iter = iter + 1;
  endwhile
  
endfunction