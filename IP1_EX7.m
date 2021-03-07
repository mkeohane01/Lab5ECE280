x = imread('coins.png');

hGauss = [1, 4, 6, 4, 1; 4, 16, 24, 16, 4; 6, 24, 36, 24, 6;
             4, 16, 24, 16, 4; 1, 4, 6, 4, 1]./256;
yGauss = conv2(x ,hGauss , 'valid');

hx = [1, 0, -1; 1, 0, -1; 1, 0, -1]
CoinsEdgeX = conv2(x, hx, 'valid')

hy = [1, 1, 1; 0, 0, 0; -1, -1, -1]
CoinsEdgeY = conv2(x, hy, 'valid')

CoinsEdge = sqrt((CoinsEdgeX.^2)+(CoinsEdgeY.^2));

edgeDetect = [-1, -1, -1; -1, 8, -1; -1, -1, -1];
yED = conv2(x ,edgeDetect , 'valid');


figure(1); clf
imagesc(yGauss)
axis equal; colormap gray ; colorbar
title('Coin Gaussian Blur (mbk28)')
