#f - funkcja
#a - poczatek przedzialu
#b - koniec przedzialu
#h - dlugosc podprzedzialu

function metodaProst(f,a,b,h)
  x1=a:h:b;
  S=h*sum(f(a:(b-h)));
  disp(['Suma z niedomiarem ',num2str(S)]);
  S2=h*sum(f((a+h):b));
  disp(["Suma z nadmiarem ",num2str(S2)])
endfunction  