function [cn,DD]=interpolacjaNewtona(x, y)
  N=length(x)-1;
  DD=zeros(N+1,N+1);
  DD(1:N+1,1)=y';
  
  for k=2:N+1
    for m=1:N+2-k
      DD(m,k)=(DD(m+1,k-1)-DD(m,k-1))/(x(m+k-1)-x(m));
    endfor
  endfor
  
  r=DD(1,:);
  cn=r(N+1);
  
  for k=N:-1:1
    cn=[cn r(k)]-[0 cn*x(k)];
  endfor
endfunction