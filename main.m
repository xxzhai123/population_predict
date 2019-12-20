clear;
close;
t = 0:1:20;
N = [5.3 7.2 9.6 12.9 17.1 23.2 31.4...
    38.6 50.2 62.9 76.0 92.0 106.5 123.2...
    131.7 150.7 179.3 204.0 226.5 251.4 275.0];
plot(t,N,'o');
hold on;
c(1) = 5.3;
c(2) = mean(diff(N)./diff(t)./N(1:20));
e0 = sum(N-fun1(c,t).^2);
tt = [21,22];
NN0 = fun1(c, tt);
c = lsqcurvefit(@fun1, c, t, N);
e = sum((N-fun1(c, t)).^2);
NN = fun1(c, tt);
plot(tt,NN,'r*');
tt = 0:0.1:22;
NN = fun1(c, tt);
plot(tt, NN, 'r');
hold off;