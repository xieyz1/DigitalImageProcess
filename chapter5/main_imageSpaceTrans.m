f = checkerboard(50);
figure, imshow(f, [])

s = 0.8;
theta = pi/6;
T = [s*cos(theta) s*sin(theta) 0
    -s*sin(theta) s*cos(theta) 0
     0 0 1];
tform = maketform('affine', T);
g = imtransform(f, tform);
figure, imshow(g, [])
g2 = imtransform(f, tform, 'nearest');
figure, imshow(g2, [])
 
g3 = imtransform(f, tform, 'FillValue', 0.5);
figure, imshow(g3, [])
 
T2 = [1 0 0; 0 1 0; 50 50 1];
tform2 = maketform('affine', T2);
g4 = imtransform(f, tform2);
figure, imshow(g4, [])
 
g5 = imtransform(f, tform2, 'XData', [1 400], 'YData', [1 400], ...
                  'FillValue', 0.5);
figure, imshow(g5, [])      