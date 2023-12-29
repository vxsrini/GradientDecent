%%%% This computes the gradient assent for function z = -x^3 - y^2 + 10x +3
%%%% The iteration starts from a point x0, y0 and iterates to reach the maximum point
%%%% The x_dir below represents the partial derivative of the function. The partial derivative with respect to x is -3x^3 + 10
%%%% The y_dir below represents the partial derivative of the function. The partial derivative with respect to y is -2y
	
tx = linspace (-4, 4, 10);
ty = tx';
[xx, yy] = meshgrid (tx, ty);
tz = -xx.^3 - yy.^2 + 10*xx + 3;
tx 
ty
tz
mesh (tx, ty, tz);
set(gca, "linewidth", 4, "fontsize", 40)
xlabel ("tx");
ylabel ("ty");
zlabel ("tz");
hold on


function gradient_ascent (x_old, y_old, delta, iter, total_iter)
    iter = iter + 1;
    x_dir = -3 * x_old * x_old + 10;
    y_dir = -2 * y_old;
    uv = (x_dir*x_dir + y_dir*y_dir)^.5;
    x_dir_u = x_dir / uv;
    y_dir_u = y_dir / uv;
    x_new = x_old + (x_dir_u * delta);
    y_new = y_old + (y_dir_u * delta);
    printf("Iter = [%d], x_new = [%f], y_new = [%f] z_new = [%f]\n", iter, x_new, y_new, f(x_new, y_new));
    scatter3(x_new, y_new, f(x_new, y_new), 30, 'r', 'filled');
    if (iter < total_iter)
        gradient_ascent(x_new, y_new, delta, iter, total_iter)
    endif
endfunction

function r = f(x, y)
	 r = -x^3 - y^2 + 10*x + 3;
endfunction

x0 = 4
y0 = 4
delta = .1
iter = 1
total_iter = 100
gradient_ascent(x0, y0, delta, iter, total_iter)
