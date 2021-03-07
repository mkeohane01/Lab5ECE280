x = imread('TestCard.png');

hbb = ones(21,21)/441;
ybb = layerConv(x, hbb)

hGauss = [1, 4, 6, 4, 1; 4, 16, 24, 16, 4; 6, 24, 36, 24, 6;
             4, 16, 24, 16, 4; 1, 4, 6, 4, 1]./256;
yGauss = layerConv(x, hGauss)
       
hsoblv = [1, 0, -1; 2, 0, -2; 1, 0, -1];
ysoblv = layerConv(x, hsoblv)

hsoblh = [1, 2, 1; 0, 0, 0; -1, -2, -1];
ysoblh = layerConv(x, hsoblh)


for k = 1:3
    ysobl(:,:,k) = sqrt(conv2(x(:,:,k), hsoblv, 'valid').^2 + conv2(x(:,:,k), hsoblh, 'valid').^2);
end
ysobl = uint8(ysobl)

image(yGauss)
axis equal; colormap gray ; colorbar
title('Sobel Edges Test Card (mbk28)')



function y = layerConv(x, h)
for k = 1:3
    y(:,:,k) = conv2(x(:,:,k), h, 'valid');
end
y = uint8(y);
end