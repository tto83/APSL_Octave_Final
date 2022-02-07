clear; clc;
A=[1 4 3 2;2 1 3 4; 3 2 1 3; 2 3 2 1];
b=[1;1;4;2];

n=size(b,1);
x=zeros(n,1);
Ab=[A b];

for i=1:n
  Ab(i,:)=Ab(i,:)./Ab(i,i);
  for j=1:n
    if i!=j
      Ab(j,:)=Ab(j,:)-Ab(i,:)*Ab(j,i);
    end
  end
end

Ab
x=Ab(:,n+1);
disp(["a = ",num2str(x(1))]);
disp(["b = ",num2str(x(2))]);
disp(["c = ",num2str(x(3))]);
disp(["d = ",num2str(x(4))]);