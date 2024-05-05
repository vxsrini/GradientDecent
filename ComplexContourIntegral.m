clear integral
fun = @(z) z.^0.*exp(1./z);
%fun = @(z) z.^2;
%fun = @(z) cos(z)./z

g = @(theta) cos(theta) + 1i*sin(theta);
gprime = @(theta) -sin(theta) + 1i*cos(theta);

integrand = @(t) fun(g(t)).*gprime(t);

q1 = integral(integrand, 0, 2*pi, 'ArrayValued', true);
q1

