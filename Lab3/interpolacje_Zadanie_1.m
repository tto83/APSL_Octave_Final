clc;clear;close;
x=[-4,-2,1,2,4,6];
y=[10,3,5,-4,2,-7];

p_spline=spline(x,y);
p_LaG=polyfit(x,y,length(x)-1);

z=linspace(min(x)-1,max(x)+1);

hold on
plot(z,ppval(p_spline,z),'g')
plot(z,polyval(p_LaG,z),'b')
plot(x,y,'k+',"markersize",15)
legend("Spline","LaGrange",'[x,y]')
title('Interpolacja Spline i LaGrangea');
grid
box
hold off