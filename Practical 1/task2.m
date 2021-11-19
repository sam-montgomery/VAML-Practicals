%STEP 2
boat = imread("boat256.jpg");
subplot(2,3,1); imshow(boat);
subplot(2,3,4); histogram(boat,'BinLimits',[0 256],'BinWidth',1);

c = 50;
Lut = brightnessLUT(c)
subplot(2,3,2); plot(Lut(:,2));

brightBoat = enhanceBrightness(boat,c);
subplot(2,3,3); imshow(brightBoat);
subplot(2,3,6); histogram(brightBoat,'BinLimits',[0 256],'BinWidth',1);