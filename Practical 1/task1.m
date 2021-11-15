clear all; 
close all;

%STEP 1: Download the images  boat256.jpg’ and ‘dome256.jpeg’ and load them as two different variables using imread.
boat = imread("boat256.jpg");
dome = imread("dome256.jpg");

%STEP 2: Using subplot, create a 4-plot figure (2x2). Display the two images that you just loaded in the first 2 plots
subplot(2,2,1); imshow(boat)
subplot(2,2,2); imshow(dome)

%STEP 3: display the corresponding histograms of 256 bins for both pervious images right under the image. 
subplot(2,2,3); histogram(boat,'BinLimits',[0 256],'BinWidth',1);
subplot(2,2,4); histogram(dome,'BinLimits',[0 256],'BinWidth',1);

%STEP 4: The histogram function can also be used to give you back the calculated histograms as follows
%H = histogram(boat);
%h = H.Values

%STEP 5 (OPTIONAL): Create your own function myHistogram that returns the histogram h of the input image I as a
%simple array of 256 values. Compare the output with the output from step 5 to be sure your calculations are correct.
%boatHis = myHistogram(boat)