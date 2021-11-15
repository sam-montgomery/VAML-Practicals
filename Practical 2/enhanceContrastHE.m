function Iout = enhanceContrastHE(Iin)
Iout = intlut(Iin,contrast_HE_LUT(Iin));
end

