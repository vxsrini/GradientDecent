pkg load image
% generate some data
x = -4:0.05:4;
y = -4:0.05:4;
[X,Y] = meshgrid(x,y); 
% Z = cos(X).*sin(Y).*(X+Y);
% Z = X.^3 + Y.^3 - X - Y;
% Z = ((Y .- X).^2 + ((Y .- 1) - (X.^2 + 3.*X + 2)).^2).^.5;
% Z = ((Y .- X).^2 + ((3.*Y .- 4) - 4.*(X.^2)).^2).^.5;
Z = ((Y .- X).^2 + (((Y.^2) .+ 2) - 4.*(X.^2)).^2).^.5 ;

% For Matlab without image processing toolbox:
% Octave with image package and Matlab with image processing toolbox:
isMax = imregionalmax(Z);
isMin = imregionalmin(Z);

% plot
figure(1);clf;
surf(X,Y,Z);
hold on
scatter3(X(isMax), Y(isMax), Z(isMax), 1000, 'r', 'filled');
scatter3(X(isMin), Y(isMin), Z(isMin), 1000, 'b', 'filled');
minX = X(isMin);
minY = Y(isMin);
minZ = Z(isMin);


minX
minY
minZ

