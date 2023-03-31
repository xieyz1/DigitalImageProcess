rg = imnoise2('gaussian', 100000, 1, 0, 1);
bins = 50;
p = hist(rg, bins)
figure, hist(rg, bins)

ru = imnoise2('uniform', 100000, 1, 0, 1);
figure, hist(ru, bins)

rs = imnoise2('salt & pepper', 100000, 1, 0.05, 0.05);
figure, hist(rs, bins)

rl = imnoise2('lognormal', 100000, 1, 1, 0.25);
figure, hist(rl, bins)

rr = imnoise2('rayleigh', 100000, 1, 0, 1);
figure, hist(rr, bins)

re = imnoise2('exponential', 100000, 1, 1);
figure, hist(re, bins)

rer = imnoise2('erlang', 100000, 1, 2, 5);
figure, hist(rer, bins)