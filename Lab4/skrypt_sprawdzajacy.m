clear;clc;
f=@(x) x.^2+2;
wynik_quad=quad(f,1,5);
f

disp(['Metoda prostokatow:'])
metodaProst(f,1,5,1);
disp(["Quad ",num2str(wynik_quad)]);
disp(["**************************************"]);

disp(['Metoda trapezow:'])
metodaTrapez(f,1,5,1);
disp(["Quad ",num2str(wynik_quad)]);
disp(["**************************************"]);

disp(['Metoda Simpsona:'])
metodaSimpson(f,1,5,4);
disp(["Quad ",num2str(wynik_quad)]);
disp(["**************************************"]);

disp(['Metoda MGL:'])
metodaMGL(f,1,5);
disp(["Quad ",num2str(wynik_quad)]);
disp(["**************************************"]);