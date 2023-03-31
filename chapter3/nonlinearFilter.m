openExample('images/CreateFilterAndApplyItExample')

f = rgb2gray(originalRGB);
% add noise for image
fn = imnoise(f, 'salt & pepper', 0.2);
figure, imshow(fn)
gm = medfilt2(fn)
figure, imshow(gm)
gms = medfilt2(fn, 'symmetric');
figure, imshow(gms)