%Read in boatNoise
boatNoise = imread('boatnoise.jpg');
figure('Name','Task 1 Step 1')
%1 row, 2 cols - in position 1 show boatNoise
subplot(1,3,1), imshow(boatNoise)
title("Original image w/noise")

%create 3x3 matrix Mask B, where all elements have value 1/9 so that the
%sum of all the elements would add to 1
B = ones(3,3) / 9;

%Perform the convolution between the image and the mask B using both
%conv2() and filter2()
%firstly I will use conv2(Image,Mask)
conv2BoatResult = conv2(double(boatNoise),B);

%if you imread in your image
%then convert it to double
%it will not display
%remember to convert it back to uint8 or it will just display white
conv2BoatResult = uint8(conv2BoatResult);

%show result vs original boatnoise
subplot(1,3,2), imshow(conv2BoatResult)
title("Convolution w/conv2()");

%now I will use filter2(Image,Mask)
filter2BoatResult = filter2(B, double(boatNoise));
%remember to convert it back to uint8 or it will just display white
filter2BoatResult = uint8(filter2BoatResult);
subplot(1,3,3), imshow(filter2BoatResult);
title("Convolution w/filter2()");

%Step 4 - create a new 5x5 mask so the sum of all elements is 1. aka each
%value in the matrix = 1/25
newMask = ones(5,5) / 25;

%Filtering the image with this mask
figure('Name', 'Task 1 Step 4')
subplot(1,3,1), imshow(boatNoise);
title("Original image w/noise");

%first using largermask w/conv2()
conv2LargerMaskBoatResult = conv2(double(boatNoise),newMask);
conv2LargerMaskBoatResult = uint8(conv2LargerMaskBoatResult);
subplot(1,3,2), imshow(conv2LargerMaskBoatResult);
title("larger mask + conv2");

%now using largermask w/filter2()
filter2LargerMaskBoatResult = filter2(newMask, double(boatNoise));
filter2LargerMaskBoatResult = uint8(filter2LargerMaskBoatResult);
subplot(1,3,3), imshow(filter2LargerMaskBoatResult);
title("larger mask + filter2");

%Using the larger mask reduces the amount of noise in the image to such an
%extent that the picture becomes blurred


