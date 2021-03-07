rad = 100;
del = 10;


[x, y] = meshgrid((-3*rad-del):(3*rad+del));
[rows, cols] = size(x);


venn_img = zeros(rows, cols, 3);
venn_img(:,:,1) = (dist(x, y, rad.*cos(0), rad.*sin(0)));
venn_img(:,:,2) = (dist(x, y, rad.*cos(2*pi/3), rad.*sin(2*pi/3)));
venn_img(:,:,3) = (dist(x, y, rad.*cos(4*pi/3), rad.*sin(4*pi/3)));



%fig
figure(1); clf
image(venn_img)
axis equal
title("p = 0.005")
%save('IP1_EX1_Plot2.png');

function ret = dist(x, y, xc, yc)
    p = 0.005;
    ret = 1 ./ (1 + p * sqrt((x-xc).^2 + (y-yc).^2));
end