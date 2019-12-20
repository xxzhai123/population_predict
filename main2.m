t = 1790:10:2000;
x = [3.9 5.3 7.2 9.6 12.9 17.1 23.2 31.4 38.6 50.2 62.9 76.0 ...
    92 106.5 123.2 131.7 150.7 179.3 204 226.5 251.4 275];
plot(t, x, 'o');
fx = @(a,b,x)(exp(a*x+b));
[a,gof1,output1 ]= fit(t',x',fx,'StartPoint',[0.001 1])
x1 = a(2010)
hold on;
plot(a,'r-');
dsolve('Dx = r*x*(1 - x/c)','x(1790)=3.9')
%fx2 = @(a,b,x)(a./(1+(a*10/39-1)*exp(-b*(x-1790))));
fx2 = @(a,b,x)(a./(1+(a/3.9-1)*exp(-b*(x-1790))));
[a2,gof2 ,output2]= fit(t',x',fx2,'StartPoint',[340 0.02])
plot(a2,'b--');
x2 = a2(2010)
legend('初始点','指数模型','停滞模型','Location','northwest');
axis([1760 2030 0 400])
hold off;
