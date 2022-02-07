function metodaMGL(f,a,b)
  
  n_2=[-sqrt(3)/3 sqrt(3)/3]; #wezly n2
  n_4=[-sqrt(525+70*sqrt(30))/35 -sqrt(525-70*sqrt(30))/35 sqrt(525-70*sqrt(30))/35 sqrt(525+70*sqrt(30))/35]; #wezly n4
  na_4=[(18-sqrt(30))/36 (18+sqrt(30))/36 (18+sqrt(30))/36 (18-sqrt(30))/36]; #wagi n4

  x1=@(n_2) ((b+a)/2+(b-a)/2*n_2);
  dx=(b-a)/2;

  F=f(x1(n_2))*dx;
  F2=f(x1(n_4))*dx;
  S=sum(F);
  S2=sum(F2.*na_4);
  disp(['Suma dla n=2 ',num2str(S)]);
  disp(['Suma dla n=4 ',num2str(S2)]);
 endfunction