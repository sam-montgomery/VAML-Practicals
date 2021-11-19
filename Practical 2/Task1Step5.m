figure('Name','Task1Step5');
subplot(1,2,1), imshow(boatNoise);
title('Original w/noise')
%Now apply your noiseReduction.m function
myN=3;
newFunctionImage = noiseReduction(boatNoise,myN);
subplot(1,2,2), imshow(newFunctionImage);
title("noiseReduction applied w/N=" + myN + ":");
