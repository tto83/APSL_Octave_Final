clear;
f=@(x)([x(1)^2+x(2)^2-1; x(1)+x(2)]);

i=0;
eps=0.000001;
x_test=[1;2];

J=@(x)[2*x(1) 2*x(2);1 1];

while sum(abs(f(x_test)))>eps
  x_test=x_test-inv(J(x_test))*f(x_test)
  i+=1;
end

x_test
i