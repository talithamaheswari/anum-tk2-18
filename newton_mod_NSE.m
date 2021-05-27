function [upred,vpred,wpred] = newton_mod_NSE(u,v,w, tol)
  input = [u,v,w]
  i = 1;
  
  % cek konvergensi
  while (i != 1 and norm([upred,vpred,wpred]) <= tol):
  
    % masukkan tebakan awal ke fungsi F(u,v,w) dan J(u,v,w)
    f_val = Ffunc(u,v,w);
    j_val = Jfunc(u,v,w);
    
    % selesaikan spl J(u,v,w)d = -F(u,v,w)
    [L, U] = funLU(j_val);
    x = lower(L, -1*f_val);
    d = upper(U, x);
    
    % iterasi x1 = x0 + d
    [upred,vpred,wpred] = input + d
  
endfunction