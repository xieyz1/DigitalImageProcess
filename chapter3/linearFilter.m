openExample('images/CreateFilterAndApplyItExample')

f = rgb2gray(originalRGB);
w = fspecial('laplacian', 0)
w = [0 1 0; 1 -4 1; 0 1 0];
g1 = imfilter(f, w, 'replicate');
figure, imshow(g1, [ ])

f2 = im2double(f);
g2 = imfilter(f2, w, 'replicate');
figure, imshow(g2, [ ])

g = f2 - g2;
figure, imshow(g)

w4 = fspecial('laplacian', 0);
w8 = [1 1 1; 1 -8 1; 1 1 1];
f3 = im2double(f);
g4 = f3 - imfilter(f3, w4, 'replicate');
g8 = f3 - imfilter(f3, w8, 'replicate');
figure, imshow(f)
figure, imshow(g4)
figure, imshow(g8)