H = fftshift(lpfilter('gaussian', 500, 500, 50));
figure, mesh(H(1:10:500, 1:10:500))
axis([10 50 0 50 0 1])
colormap([0 0 0])
axis off
grid off
view(-25, 30)
view(-25, 0)

figure, surf(H)
colormap(gray)

H = fftshift(lpfilter('gaussian', 500, 500, 50));
figure, surf(H(1:10:500, 1:10:500))
axis([0 50 0 50 0 1])
colormap(gray)
grid off; axis off
shading interp

[Y, X] = meshgrid(-2:0.1:2, -2:0.1:2);
Z = X.*exp(-X.^2 - Y.^2);
figure, surf(Z)