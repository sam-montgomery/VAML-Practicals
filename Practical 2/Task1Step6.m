figure('Name','Task1Step6');
subplot(1,2,1), imshow(boatNoise);
title('Original w/noise')

%Now apply your noiseReduction.m function
myB=ones(5,5) / 25;
newMyConvolutionImage = myConvolution(boatNoise,myB);
subplot(1,2,2), imshow(uint8(newMyConvolutionImage));
title("myConvolution() applied:");
