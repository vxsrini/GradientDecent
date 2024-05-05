

%%%%% https://www3.nd.edu/~nancy/Math30650/Matlab/Demos/fourier_series/fourier_series.html %%%%
%%%%% pkg install -forge symbolic %%%%%%%%%%%%%%%%
%%%%% pip3 install sympy %%%%%%%%

pkg load symbolic
syms x w
a = @(x, w) int((cos (w.*x) .* sin (x) ./ x), 0, 32)
%%a = @(x, w) int((cos (w.*x) .* sin (x) ./ x))
ezplot(a(x,w))
