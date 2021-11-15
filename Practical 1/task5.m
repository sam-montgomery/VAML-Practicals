%Task 5 - contrast enhancement using Histogram Equalisation
%Step 1 - Matlab has its own function to perform histogram equalisation,
%called histeq(). Using this, display both images as well as the caculated
%transfer function and resulting histogram

figure('Name','Task5Boat')

%original boat
subplot(2,3,1), imshow(boat);

%plot of transfer function for hist equalised boat
%histo of original image
subplot(2,3,4), histogram(boat, 'BinLimits',[0 256],'BinWidth',1);
[pixelCounts, grayLevels] = imhist(boat);

%call cumsum on the pixel counts
cdf = cumsum(pixelCounts); % Make transfer function (Lut)
cdf = cdf / sum(cdf); % Normalize

%finally plot
subplot(2,3,2), plot(grayLevels, cdf, 'b-');

%enahnced boat using histogram equalisation
equalisedBoat = histeq(boat);
subplot(2,3,3), imshow(equalisedBoat);

%new enhanced histo
subplot(2,3,6), histogram(equalisedBoat, 'BinLimits',[0 256],'BinWidth',1);

figure('Name','Task5Dome')

%original boat
dome = imread("dome256.jpg");
subplot(2,3,1), imshow(dome);

%plot of transfer function for hist equalised boat
%histo of original image
subplot(2,3,4), histogram(dome, 'BinLimits',[0 256],'BinWidth',1);
[pixelCounts, grayLevels] = imhist(dome);

%call cumsum on the pixel counts
cdf = cumsum(pixelCounts); % Make transfer function (Lut)
cdf = cdf / sum(cdf); % Normalize

%finally plot
subplot(2,3,2), plot(grayLevels, cdf, 'b-');

%enahnced boat using histogram equalisation
equalisedDome = histeq(dome);
subplot(2,3,3), imshow(equalisedDome);

%new enhanced histo
subplot(2,3,6), histogram(equalisedDome, 'BinLimits',[0 256],'BinWidth',1);


