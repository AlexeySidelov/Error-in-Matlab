function F=func(x)
global par T
F=exp(-par*x.*x).*cos(x.*x);
mu=num2str(par);
T=['exp(-/mu x^2)cos x^2, \mu=', mu];
clear 
global par T
T='0';
par=0.1;
a=0; b=2*pi;
N=100; L1=0; L2=2*pi; X=linspace(L1, L2, N);
Y=func(X);
plot(X,Y); grid on;
xlabel('x'); ylabel('y'); title(T)
xr=ginput(2);
[x_m, y_m]=fminbnd(@func,xr(1,1),xr(2,1));
hold on
plot(x_m, y_m,'r*',xr(1,1), xr(1,2),'g*',xr(2,1),xr(2,2),'g*')
hold off

