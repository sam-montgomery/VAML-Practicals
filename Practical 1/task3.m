clear all;
close all;

boat = imread("boat256.jpg");
subplot(2,3,1); imshow(boat);
subplot(2,3,4); histogram(boat,'BinLimits',[0 256],'BinWidth',1);

x = contrast_LS_LUT(1.7, -85)
subplot(2,3,2); plot(x);

ceBoat = enhanceContrastALS(boat);
subplot(2,3,3); imshow(ceBoat);

subplot(2,3,6); histogram(ceBoat,'BinLimits',[0 256],'BinWidth',1);
