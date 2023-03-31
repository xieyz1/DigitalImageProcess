H = fftshift(hpfilter('ideal', 500, 500, 50));
mesh(H(1:10:500, 1:10:500));
axis([0 50 0 50 0 1])
colormap([0 0 0])
axis off
grid off
figure, imshow(H, [ ])

openExample('images/AdjustContrastOfGrayscaleImageExample')
f = imread('pout.tif');
imshow(f)

PQ = paddedsize(size(f));
D0 = 0.05*PQ(1);
H = hpfilter('gaussian', PQ(1), PQ(2), D0);
g = dftfilt(f, H);
figure, imshow(g, [ ])

PQ = paddedsize(size(f));
D0 = 0.05*PQ(1);
HBW = hpfilter('btw', PQ(1), PQ(2), D0, 2);
H = 0.5 + 2*HBW;
gbw = dftfilt(f, HBW);
gbw = gscale(gbw);
figure, imshow(gbw, [ ])
ghf = dftfilt(f, H);
ghf = gscale(ghf);
figure, imshow(ghf, [ ])
ghe = histeq(ghf, 256);
figure, imshow(ghe, [ ])
