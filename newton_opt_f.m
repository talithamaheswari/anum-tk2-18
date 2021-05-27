function [xpred, ypred] = newton_opt_f(a, tol)
  % a: initial guess value as a vector of n elements
  % TOL: error tolerance
  % Return: optimized solution for the function
  
  a = a';
  
  while (norm(nabla_f) > TOL):
    % masukkan tebakan awal ke fungsi nabla_f(u,v,w) dan H(u,v,w)
    f_val = nabla_f(a(1), a(2));
    h_val = hessian_f(a(1), a(2));
    
    % selesaikan spl J(u,v,w)d = -F(u,v,w)
    v = h_val\-f_val;
    
    % update nilai
    a = a + d;
  endwhile
  
endfunction