f = checkerboard(8);
figure, imshow(f, [])

PSF = fspecial('motion', 7, 45);
gb = imfilter(f, PSF, 'circular');
figure, imshow(gb, [])

noise = imnoise(zeros(size(f)), 'gaussian', 0, 0.001);
g = gb + noise;
figure, imshow(g, [])

figure, imshow(pixeldup(f, 8), [])

% Using deconvwnr function to recover fuzzy noise images
fr1 = deconvwnr(g, PSF);
figure, imshow(fr1, [])

Sn = abs(fft2(noise)).^2;       % noise power spectrum
nA = sum(Sn(:))/prod(size(f));  % noise average power
Sf = abs(fft2(f)).^2;           % image power spectrum
fA = sum(Sf(:))/prod(size(f));  % image average power
R = nA/fA;
fr2 = deconvwnr(g, PSF, R);
figure, imshow(fr2, [])

NCORR = fftshift(real(ifft2(Sn)));
ICORR = fftshift(real(ifft2(Sf)));
fr3 = deconvwnr(g, PSF, NCORR, ICORR);
figure, imshow(fr3, [])

fr = deconvreg(g, PSF, 4);
figure, imshow(fr, [])
fr1 = deconvreg(g, PSF, 0.4, [1e-7 1e7]);
figure, imshow(fr1, [])