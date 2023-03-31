openExample('images/AdjustContrastOfGrayscaleImageExample')
f = imread('pout.tif');
imshow(f)

[B, c, r] = roipoly(f);
[p, npix] = histroi(f, c, r);
figure, bar(p, 1)

[v, unv] = statmoments(h,2);