PSF = fspecial('gaussian', 7, 10);
figure, imshow(pixeldup(PSF, 73), [])

SD = 0.01;
g = imnoise(imfilter(f, PSF), 'gaussian', 0, SD^2);

INITPSF = ones(size(PSF));
NUMIT = 5;

[fr, PSFe] = deconvblind(g, INITPSF, NUMIT, DAMPAR, WEIGHT);
figure, imshow(pixeldup(PSFe, 73), []);

NUMIT = 5;

[fr, PSFe] = deconvblind(g, INITPSF, NUMIT, DAMPAR, WEIGHT);
figure, imshow(pixeldup(PSFe, 73), []);