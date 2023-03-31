openExample('images/CreateFilterAndApplyItExample')

% fill image
f = [1 2; 3 4];
fp = padarray(f, [3, 2], 'replicate', 'post')

f = padarray(f, [m n], 'replicate');
g = colfilt(f, [m n], 'sliding', @gmean);