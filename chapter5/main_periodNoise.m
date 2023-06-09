C = [0 64; 0 128; 32 32; 64 0; 128 0; -32 32];
[r, R, S] = imnoise3(512, 512, C);
imshow(S, []);
figure, imshow(r, [])

C = [0 32; 0 64; 16 16; 32 0; 64 0; -16 16];
[r, R, S] = imnoise3(512, 512, C);
figure, imshow(S, [])
figure, imshow(r, [])

C = [6 32; -2 2];
[r, R, S] = imnoise3(512, 512, C);
figure, imshow(S, [])
figure, imshow(r, [])

A = [1 5];
[r, R, S] = imnoise3(512, 512, C, A);
figure, imshow(S, [])
figure, imshow(r, [])