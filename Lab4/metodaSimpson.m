#funkcja, od, do, ilosc przedzialow

function metodaSimpson (f,a,b,n)
  h=(b-a)/n;
  y=f(a)+f(b);
  if (n>=2) && (rem(n,2)==0)
    for i=1:n-1
      if mod(i,2)
        y=y+4*f(a+i*h);
      else
        y=y+2*f(a+i*h);
      endif
    endfor
   y=h*y/3;
    disp(['Suma ',num2str(y)]);  
  else
  disp(['Przedzialy musza byc >=2 i parzyste']);
  endif
endfunction

  
  
  
  
  
