% Define the interval [a, b]
a = 0;
b = 1;

% Define the parameterization of the parabola
%z = @(t) t + 1i*t.^2;  % z(t) = t + it^2
% Define the complex function f(z) = z^3
%fun = @(z) z.^3;
% Define the integrand function
%integrand = @(t) fun(z(t)) .* (1 + 2i*t);  % f(z(t)) * dz/dt

% Define the parameterization of the y=x i.e. z = t+it z' = 1+i
z = @(t) t + 1i*t;  % z(t) = t + it
% Define the complex function f(z) = z^2
fun = @(z) z.^2;
integrand = @(t) fun(z(t)) .* (1 + i);  % f(z(t)) * dz/dt

% Compute the integral using the 'ArrayValued' option
q = integral(integrand, a, b, 'ArrayValued', true);

disp(['The path integral of z^3 along the parabola y = x^2 from ', num2str(a), ' to ', num2str(b), ' is:']);
disp(['∫(z^2) dz = ', num2str(q)]);

