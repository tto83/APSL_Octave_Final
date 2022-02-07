clear; clc;
A=[2 -1 1;8 2 -5;4 1 1];
b=[-4;-10;2];


[L,U,P]=lu(A);
f=P*b;
y=inv(L)*f;
x=inv(U)*y;

disp(["Dekompozycja LU:"]);
disp(["x = ",num2str(x(1))]);
disp(["y = ",num2str(x(2))]);
disp(["z = ",num2str(x(3))]);

[Q,R]=qr(A);
f=Q'*b;
x=inv(R)*f;

disp(["Dekompozycja QR:"]);
disp(["x = ",num2str(x(1))]);
disp(["y = ",num2str(x(2))]);
disp(["z = ",num2str(x(3))]);