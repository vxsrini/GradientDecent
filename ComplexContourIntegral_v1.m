pkg load symbolic  % Load the Symbolic Package if not already loaded

syms z theta;  % Declare z and theta as symbolic variables

% Define the function f(z) = e^(iz) / (1 - e^(iz))
f = 2*i*exp(i*theta) / (1 - 2*exp(i*theta));

% Compute the residue at z = 0
residue = limit(z * f, z, 0);

% Calculate the integral using the residue theorem
integral_value = 2*pi*i * residue;

disp('The residue at z = 0 is:');
disp(residue);
disp('The value of the integral over [0, 2*pi] is:');
disp(integral_value);
