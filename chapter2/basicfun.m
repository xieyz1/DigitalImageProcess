%---------------------------------------------------------------------
% This file introduces some basic functions for image processing.
%---------------------------------------------------------------------

f = imread('chestxray.jpg'); % read image
f = imread('D:\myimages\chestxray.jpg');
[M, N] = size(f); % return the row M and column N of the image.
whos f % show addtional info of an array.
imshow(f, [low high]); % show image, G is gray level.
imwrite(f, 'patient10_run1', 'tif'); % save image
