T = [2 0 0; 0 3 0; 0 0 1];
tform = maketform('affine', T)
tform.tdata
tform.tdata.T
tform.tdata.Tinv

WZ = [1 1; 3 2];
XY = tformfwd(WZ, tform)
WZ2 = tforminv(XY, tform)