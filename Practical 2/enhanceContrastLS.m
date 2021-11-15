function Iout = enhanceContrastLS(Iin,m,c)
%Iin = original image
%   m = the slope (change in y/change in x)
Lut = contrast_LS_LUT(m,c);
%intlut applies the contrast enhanced Lut to the original image
Iout = intlut(Iin,Lut);
%Iout is what is returned at the end (brightness enhanced image)
end

