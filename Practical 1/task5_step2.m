figure('Name','Task5Step2')
subplot(2,3,1)
imshow(boat)
subplot(2,3,4)
histogram(boat,'BinLimits',[0 256],'BinWidth',1);
myEqualisedBoat = enhanceContrastHE(boat);
subplot(2,3,3), imshow(myEqualisedBoat)
subplot(2,3,6), histogram(myEqualisedBoat,'BinLimits',[0 256],'BinWidth',1);
subplot(2,3,2)
[pixelCounts, grayLevels] = imhist(boat);
cdf = cumsum(pixelCounts)
cdf = cdf/sum(cdf); %normalize
plot(grayLevels, cdf,'b-')