

%%%%% https://www3.nd.edu/~nancy/Math30650/Matlab/Demos/fourier_series/fourier_series.html %%%%
%%%%% pkg install -forge symbolic %%%%%%%%%%%%%%%%
%%%%% pip3 install sympy %%%%%%%%

syms x k L n
v = 1
a = @(f,x,k,L) int(f*cos(k*pi*x/L)/L,x,-L,L);
b = @(f,x,k,L) int(f*sin(k*pi*x/L)/L,x,-L,L);
fs = @(f,x,n,L) a(f,x,0,L)/2 + symsum(a(f,x,k,L)*cos(k*pi*x/L) + b(f,x,k,L)*sin(k*pi*x/L),k,1,n);
f = sin(x);
pretty(fs(f,x,100,v))
ezplot(fs(f,x,100,v),[-v,v])
hold on
ezplot(f,[-v,v])
hold off
