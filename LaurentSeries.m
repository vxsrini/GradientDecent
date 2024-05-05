clear integral
%%%%%%% exp(1/z) %%%%%%%%%%%%%%%%%
%fun_a = @(z,n) exp(1./z)./z.^(n+1);
%fun_b = @(z,n) z.^(n-1).*exp(1./z);
%%%%%%% sin(1/z) %%%%%%%%%%%%%%%%%
fun_a = @(z,n) sin(1./z)./z.^(n+1);
fun_b = @(z,n) z.^(n-1).*sin(1./z);
%%%%%%% 1/(z-2).^4 %%%%%%%%%%%%%%%%%
fun_a = @(z,n) (1./(z-4).^4)./(z-2).^(n+1);
fun_b = @(z,n) z.^(n-1).*sin(1./z);

g = @(theta) cos(theta) + 1i*sin(theta);
gprime = @(theta) -sin(theta) + 1i*cos(theta);

for i = 0:20
	integrand = @(t) fun_a(g(t), i).*gprime(t);
	an = integral(integrand, 0, 2*pi, 'ArrayValued', true) ;
	an = an/(6.2832i)
end

for i = 1:20
	integrand = @(t) fun_b(g(t), i).*gprime(t);
	bn = integral(integrand, 0, 2*pi, 'ArrayValued', true) ;
	bn = bn/(6.2832i)
end
