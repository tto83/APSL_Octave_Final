clear; clc;
A=[2 3 1;-1 1 1;3 2 0];

[u, s, v]=svd(A);
x=v(:,3);
x(1);
x=x/x(1);
disp(["x = ",num2str(x(1))]);
disp(["y = ",num2str(x(2))]);
disp(["z = ",num2str(x(3))]);