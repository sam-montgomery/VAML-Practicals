function Iout = noiseReduction(I,N)
%NOISEREDUCTION calculates an average filter mask of size NxN and applies
%it to image I, which is returned
%   Detailed explanation goes here
numToDivideBy = N*N;
maskToApply = ones(N,N) / numToDivideBy;
newImageResult = conv2(double(I),maskToApply);
Iout = uint8(newImageResult);
end

