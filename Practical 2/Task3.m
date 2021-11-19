%Task 3
%The first two steps of a typical automated image processing system imply
%performing first preprocessing and then segmentation
%(sometimes by thresholding). In this section we aim to complete a very
%simple verion of these two steps

figure('Name','Task3')
vehicle = imread('vehicle.jpg');
subplot(3,2,1), imshow(vehicle);
title('vehicle original');
subplot(3,2,2), histogram(vehicle, 'BinLimits',[0 256],'BinWidth',1);
title('vehicle original hist');

%contrast enhancement via histogram equalisation
% HEVehicle = enhanceContrastHE(vehicle);
% subplot(3,2,3), imshow(HEVehicle);
% title('HistEq Vehicle');
% subplot(3,2,4), histogram(HEVehicle, 'BinLimits',[0 256],'BinWidth',1);

%contrast enhancemenet via automated linear stretching
brighterVehicle = enhanceBrightness(vehicle, 135);
noiseReducedVehicle = noiseReduction(vehicle, 3);
ALSVehicle = enhanceContrastALS(noiseReducedVehicle);
subplot(3,2,3), imshow(ALSVehicle);
title('brighter noiseless ALS Vehicle');
subplot(3,2,4), histogram(ALSVehicle, 'BinLimits',[0 256],'BinWidth',1);

%Task 3 Step 3 - using threshold to create a binary image in which the
%object of interest appears as a white area on a black background
myThreshold = 60;
Ibinary = ALSVehicle <= myThreshold;
subplot(3,2,5), imshow(Ibinary);
title("Vehicle + Threshold of "+myThreshold+" applied")
%Corresponding hist would be senseless


%Task 3 Step 5. Doing the same processing but on vehicle2
vehicle2 = imread('vehicle2.jpg');
vehicle2Ibinary = vehicle2 <= 115;
subplot(3,2,6), imshow(vehicle2Ibinary);

figure('Name', 'Original Vehicle 2')
imshow(vehicle2);
