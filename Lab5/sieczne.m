function [x_nowe, stoper, i] = sieczne(f,x_0,x_1,eps)
  i=0;
  tic
  while abs(f(x_1))>eps
    x_nowe=x_1-f(x_1)/((f(x_1)-f(x_0))/(x_1-x_0));
    x_0=x_1;
    x_1=x_nowe;
    i+=1;
  end
  stoper=toc;
endfunction