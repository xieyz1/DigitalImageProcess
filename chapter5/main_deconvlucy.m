f = checkerboard(8);
figure, imshow(pixeldup(f, 8))

PSF = fspecial('gaussian', 7, 10);
SD = 0.01;
g = imnoise(imfilter(f, PSF), 'gaussian', 0, SD^2);
figure, imshow(pixeldup(g, 8))

DAMPAR = 10*SD;
LIM = ceil(size(PSF, 1)/2);
WEIGHT = zeros(size(g));
WEIGHT(LIM + 1:end - LIM, LIM + 1:end - LIM) =1;

NUMIT = 5;
f5 = deconvlucy(g, PSF, NUMIT, DAMPAR, WEIGHT);
figure, imshow(pixeldup(f5, 8))