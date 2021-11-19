%Iin = the original image
%c = how much you're increasing/decreasing brightness by
function Iout = enhanceBrightness(Iin,c)
Lut = brightnessLUT(c);
%intlut applies the Lut to the original image
Iout = intlut(Iin,Lut);
%Iout is what is returned at the end (the brightness altered image)
end