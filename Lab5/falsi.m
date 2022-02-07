function [x_1, stoper, i] = falsi(f,x_0,x_1,eps)
  i=0;
  
  tic;  
    while abs(f(x_1))>eps
      x_1=x_1-f(x_1)/((f(x_1)-f(x_0))/(x_1-x_0));
      i+=1;
    end
  stoper=toc;