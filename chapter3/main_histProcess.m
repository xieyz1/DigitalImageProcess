% draw the image histogram
h = imhist(I);
plot(h)
h1 = h(1:10:256);
horz = 1:10:256;
bar(horz, h1)
stem(horz, h1, 'fill')
axis([0 255 0 15000])
set(gca, 'xtick', 0:50:255)
set(gca, 'ytick', 0:2000:15000)

% histogram equalization
imshow(I)
figure, imhist(I)
ylim('auto')
g = histeq(I, 256); % perform equalization function
figure, imshow(g)
figure, imhist(g)
ylim('auto')

% histogram matching
p = manualhist;
g1 = histeq(I, p);
figure, imshow(g1)
figure, imhist(g1)