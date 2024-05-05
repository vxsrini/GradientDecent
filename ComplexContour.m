%% Example Of A Locally Conformal Mapping: w = z^2, z â‰  0
%% CSUMS Summer 2010 A.O. Hausknecht 
%% Written using OCTAVE
function plotZSqr_SquareGrid()
clf; minXY = -4; maxXY = 4; n = 16;
delta = (maxXY-minXY)/n;

%% Create A Plot Of The Rectangular Grid
subplot (1, 2, 1)
title ("Grid of Squares")
hold on

%% Draw left-top filled square
x1 = maxXY-1; x2 = maxXY;
rectX = [x1 x2 x2 x1]; 
y1 = x1; y2 = x2;
rectY = [y1 y1 y2 y2];
%% Fill with gray
fill (rectX, rectY, [0.9 0.9 0.9])

%% Draw the vertical lines
y = minXY:delta:maxXY;
for x =  minXY:maxXY
  plot( x*ones(1, n+1) , y,'b')
end

%% Draw the horizontal lines
x = minXY:delta:maxXY;
for y = minXY:maxXY
  plot(x, y*ones(1, n+1), 'r')
end
%%
%% Set the axes scaling, domain, and range
axis('equal')
xy = maxXY+1; 
axis([-xy xy -xy xy])

%% Draw Unit Tangents at z = x1+y1*i
%% 1. Draw the Unit Tangent in the i-direction
a = [x1 x1]; b = [y1 (y1+1)];
line(a, b, 'linewidth',3, 'color', 'blue')
%% 1. Draw the Unit Tangent in the r-direction
a = [x1 (x1+1)]; b = [y1 y1];
line(a,b, 'linewidth',3, 'color', 'red')
hold off 

%% Create A Plot Of The Image Of The Rectangular Grid
subplot (1, 2, 2)
title ("Image Of Grid Under w = z^2")
hold on

%% Draw the image of a square under w = z^2
%% Need to form a list of x-values and y-values
%% along the image's boundary in counter-clockwise
%% order.
y = minXY:delta: maxXY; 
xy = maxXY-1; t = xy:.1:maxXY;
%% Bottom edge's image
z = (t + xy*i).^2;    u1 = real(z); v1 = imag(z);
%%
%% Right edge's image
z = (maxXY + t*i).^2; u2 = real(z); v2 = imag(z);
%%
%% Revere the order of the t-values so that
%% the points will be generated in counter-clockwise order.
t = fliplr (t);
%% Top edge's image
z = (t + maxXY*i).^2; u3 = real(z); v3 = imag(z);
%%
%% Left edge's image
z = (xy + t*i).^2; u4 = real(z); v4 = imag(z);
%%
%% Now collect all the points in the correct order!
u = cat(2, u1, u2, u3, u4);
v = cat(2, v1, v2, v3, v4);
%% Finally, fill the image of the square
fill (u, v, [0.9 0.9 0.9])

%% Draw the images of the vertical lines
%% by using the fact that if z = x+iy, then 
%& real(z^2) = x*x-y*y and imag(z^2) = 2*x*y
%%
y = minXY:delta: maxXY;
for x =  minXY:delta:maxXY
  plot(x*x - y.*y ,2*x*y,'b')
end

%% Draw the images of the horizontal lines
x = minXY:delta: maxXY;
for y = minXY:delta:maxXY
  plot(x.*x - y*y, 2*x*y, 'r')
end
%% Set the axes scaling, domain, and range
axis('equal')
rMax = maxXY^2+4; iMax = 2*maxXY^2;
axis([-rMax rMax -iMax iMax])

%% Draw the images of the unit tangents under w = z^2
%% Note: dw = 2zdz,
%% 
%% 1. Plot The image of the unit tangent in the i-direction
z = xy+xy*i; dz = 0+1*i;
w = z^2; dw = 2*z*dz;
a = [real(w) real(w+dw)]; b = [imag(w) imag(w+dw)];
line(a,b, 'linewidth',3, 'color', 'blue')
%%
%% 2. Plot The image of the unit tangent in the real-direction
dz = 1 + 0*i; dw = 2*z*dz; 
a = [real(w) real(w+dw)]; b = [imag(w) imag(w+dw)];
line(a,b, 'linewidth',3, 'color', 'red')

hold off   
