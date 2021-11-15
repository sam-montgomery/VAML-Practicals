function IOut = oneLineEnhanceContrastPL(Iin,gamma)
%ONELINEENHANCECONTRASTPL
%   Task4 Step3
IOut = uint8(round((double(Iin).^gamma)/(255.0^(gamma-1))));
end

