%---------------------------------------------------------------------
% brightness transformed function.
%---------------------------------------------------------------------

I = imread('pout.tif');
iimshow(I);

K = imadjust(I, [0.3 0.7], []);
figure
imshow(K)

% Use logarithmic transformations to reduce the dynamic range. 
G = im2uint8(mat2gray(log(1 + double(f))));
imshow(G)
