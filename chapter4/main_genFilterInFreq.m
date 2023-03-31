% Calculate the square of the distance from each point 
% to the origin of the rectangle.
% Note: the distance to the top left is 0
[U, V] = dftuv(8, 5);
D = U.^2 + V.^2

% Use fftshift function to Obtain the distance relative 
% to the center of the frequency rectangle.
fftshift(D)