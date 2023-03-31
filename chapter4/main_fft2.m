openExample('images/AdjustContrastOfGrayscaleImageExample')

% Fourier transform
F = fft2(I);
S = abs(F);
figure, imshow(S, [ ])

% Move the origin of the transformation to the center of 
% the frequency matrix.
Fc = fftshift(F);
figure, imshow(abs(Fc), [ ])

% Logarithmic change to enhanced detial.
S2 = log(1+abs(Fc));
figure, imshow(S2, [ ])

f = real(ifft2(F));
figure, imshow(f, [ ])