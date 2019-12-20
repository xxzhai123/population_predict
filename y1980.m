t=0:51;  %��1954��Ϊ��ʼ��
x=[60.2 61.5    62.8    64.6    66  67.2    66.2    65.9    67.3    69.1    70.4    72.5    74.5    76.3    78.5    80.7    83  85.2    87.1    89.2    90.9    92.4    93.7    95  96.259  97.5    98.705  100.1   101.654 103.008 104.357 105.851 107.5   109.3   111.026 112.704 114.333 115.823 117.171 118.517 119.85  121.121 122.389 123.626 124.761 125.786 126.743 127.627 128.453 129.227 129.988 130.756]; 
t3 = 0:25;
x3 = x(27:52);
plot(t3, x3, '*');
hold on;
dsolve('Dx = r*x*(1 - x/c)','x(0)=98.705')
fx3 = @(c,r,x)(c./(1+exp(-r*x)*(c/98.705-1)));
[a3,gof3,output3 ] = fit(t3',x3',fx3,'StartPoint',[5000 0.005])
plot(a3,'b--');
a3(56)