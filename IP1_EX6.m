x = imread('coins.png');
h = ones(10 , 10) / 10^2;
h_25 = ones(2 , 50) / 10^2;
h_52 = ones(50 , 2) / 10^2;
y = conv2(x ,h , 'valid');
y_25 = conv2(x ,h_25 , 'valid');
y_52 = conv2(x ,h_52 , 'valid');


figure(1); clf
image(y)
axis equal; colormap gray ; colorbar
title('10x10 Blur (mbk28)')
figure(2); clf
image(y_52)
axis equal; colormap gray ;colorbar
title ('50x2 Blur (mbk28)')