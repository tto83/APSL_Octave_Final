function [x_1, stoper, i] = bisekcja(f,x_0,x_1,eps)
  i=0;  
  tic
  while abs(f(x_0))>eps
    srod=x_0+(x_1-x_0)/2;
    if sign(f(x_0))==sign(f(srod))
      x_0=srod;
    else
      x_1=srod;
    endif
    i+=1;
  end
  stoper=toc;
 endfunction
  