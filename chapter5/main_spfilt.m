openExample('images/AdjustContrastOfGrayscaleImageExample')
f = imread('pout.tif');
imshow(f)

[M, N] = size(f);
R = imnoise2('salt & pepper', M, N, 0.1, 0);
c = find(R == 0);
gp = f;
gp(c) = 0;
figure, imshow(f)

R = imnoise2('salt & pepper', M, N, 0, 0.1);
c = find(R == 1);
gs = f;
gs(c) = 255;
figure, imshow(f)

fp = spfilt(gp, 'chmean', 3, 3, 1.5);

fs = spfilt(gs, 'chmean', 3, 3, -1.5);

fpmax = spfilt(gp, 'max', 3, 3);
fsmin = spfilt(gs, 'min', 3, 3);