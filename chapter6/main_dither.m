openExample('graphics/ConvertRGBImageToIndexedImageExample')
f = imread('ngc6543a.jpg');
[X1, map1] = rgb2ind(f, 8, 'nodither');
imshow(X1, map1)

[X2, map2] = rgb2ind(f, 8, 'dither');
figure, imshow(X2, map2)

g = rgb2gray(f);
g1 = dither(g);
figure, imshow(g)
figure, imshow(g1)