function Iout = enhanceBrightness(Iin,c)

Lut = brightnessLUT(c);
Iout = intlut(Iin,Lut(:,2));

end