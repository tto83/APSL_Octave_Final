#f - funkcja
#a - poczatek przedzialu
#b - koniec przedzialu
#h - dlugosc podprzedzialu

function metodaTrapez(f,a,b,h)
  x=a:h:b;
  y=f(x);
  
  S=h*(sum(y(2:b-1))+(y(1)+y(b))/2);
  disp(['Suma ',num2str(S)]);
  endfunction