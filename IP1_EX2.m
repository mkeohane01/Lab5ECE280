
Ex2 = zeros(200, 200, 3);
Ex2(:,:,1) = rand(200, 200);
Ex2(:,:,2) = rand(200, 200);
Ex2(:,:,3) = rand(200, 200);

figure(1); clf
image(Ex2)
title("Random Colors")
axis equal