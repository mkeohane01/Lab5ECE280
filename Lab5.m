%Grey Scale
a = [ 1 0 1 0 0 ;
    1 0 1 0 1 ;
    1 1 1 0 0 ;
    1 0 1 0 1 ;
    1 0 1 0 1 ];

b = 0:255;

[x, y] = meshgrid(linspace(0 , 2*pi , 201));
z = cos(x) .* cos(2*y);

%Example 4 Building an Image
rad = 100;
del = 10;
p = 0.05;
[x, y] = meshgrid((-3*rad-del):(3*rad+del));
[rows, cols] = size(x);
dist = @(x, y, xc, yc) sqrt((x-xc).^2 + (y-yc).^2);
venn_img = zeros(rows, cols, 3);
venn_img(:,:,1) = (dist(x, y, rad.*cos(0), rad.*sin(0)) < 2*rad);
venn_img(:,:,2) = (dist(x, y, rad.*cos(2*pi/3), rad.*sin(2*pi/3)) < 2*rad);
venn_img(:,:,3) = (dist(x, y, rad.*cos(4*pi/3), rad.*sin(4*pi/3)) < 2*rad);

%Example 5 Exploring Colors
[x, y] = meshgrid(linspace(0, 1, 256));
other = 0.5;
palette = zeros(256, 256, 3);
palette(:,:,1) = x;
palette(:,:,2) = y;
palette(:,:,3) = other;

x = imread('coins.png');
h = ones(10 , 10) / 10^2;
y = conv2(x ,h , 'same');
figure(1); clf
image(x)
axis equal; colormap gray ; colorbar
title('Original')
figure(2); clf
image(y)
axis equal; colormap gray ;colorbar
title ('10x10 Blur')

%fig
%figure(1); clf
%imagesc(palette)
%image(venn_img)
%axis equal
%colormap gray ; colorbar

x = [1, 2, 4, 8, 7, 5, 1]
h = [1, -1]
y = conv(x, h, 'same')

