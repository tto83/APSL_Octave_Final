clc;clear;

g = 9.81;
m=80;
c=14;
v=@(t) m*g*(1-exp((-c/m)*t));
v_d =@(t)(v(t) - 100);
tic; wynik=fsolve(v_d, 0); stoper=toc;
disp(["\n**********************************************************************\n"])
disp(["Skoczek o masie 80kg osiagnie 100 km/h w czasie s: ",num2str(wynik)]);
disp(["Czas kalkulacji: ",num2str(stoper),"\n"]);
[x stoper i]=falsi(v_d,-4,4,0.0001);
disp(["Metoda falsi - wynik: ",num2str(x)," Czas: ",num2str(stoper)," Iteracje: ",num2str(i)]);
[x stoper i]=sieczne(v_d,-4,4,0.0001);
disp(["Metoda siecznych - wynik: ",num2str(x)," Czas: ",num2str(stoper)," Iteracje: ",num2str(i)]);
[x stoper i]=bisekcja(v_d,-4,4,0.0001);
disp(["Metoda bisekcji - wynik: ",num2str(x)," Czas: ",num2str(stoper)," Iteracje: ",num2str(i),"\n"]);
clear;

g = 9.81;
c=14;
t=7;
v=@(m) m*g*(1-exp((-c/m)*t));
v_d =@(m)(v(m) - (35/1000*3600));
tic; wynik=fsolve(v_d,0); stoper=toc;
disp(["\n**********************************************************************\n"])
disp(["Skoczek osiagnie 35 m/s w 7 s, jesli bedzie wazyl kg: ",num2str(wynik)]);
disp(["Czas kalkulacji: ",num2str(stoper),"\n"]);
[x stoper i]=falsi(v_d,0,100,0.0001);
disp(["Metoda falsi - wynik: ",num2str(x)," Czas: ",num2str(stoper)," Iteracje: ",num2str(i)]);
[x stoper i]=sieczne(v_d,0,100,0.0001);
disp(["Metoda siecznych - wynik: ",num2str(x)," Czas: ",num2str(stoper)," Iteracje: ",num2str(i)]);
[x stoper i]=bisekcja(v_d,0,100,0.0001);
disp(["Metoda bisekcji - wynik: ",num2str(x)," Czas: ",num2str(stoper)," Iteracje: ",num2str(i),"\n"]);