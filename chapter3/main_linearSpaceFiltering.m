openExample('images/CreateFilterAndApplyItExample')
f = originalRGB;
w = ones(32)/32^2; % create a 31 x 31 filter

gd = imfilter(f, w);
figure, imshow(gd, [ ])

gr = imfilter(f, w, 'replicate');
figure, imshow(gr, [ ])

gs = imfilter(f, w, 'symmetric');
figure, imshow(gs, [ ])

gc = imfilter(f, w, 'circular');
figure, imshow(gc, [ ])