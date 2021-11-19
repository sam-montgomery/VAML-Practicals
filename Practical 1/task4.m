%Task 4: Contrast enhancement using Power Law (more aggressive)
%gamma >1 is enhancing contrast in bright regions
%gamma <1 is enhancing contrast in dark regions
figure('Name','Task 4')

%original boat
subplot(2,3,1), imshow(boat)

%corresponding boat histogram
subplot(2,3,4), histogram(boat, 'BinLimits',[0 256],'BinWidth',1);

%plot showing PL transfer function
subplot(2,3,2), plot(contrast_PL_LUT(0.5));
powerLawBoat = enhanceContrastPL(boat,0.5);

%Show this new boat enhanced using PL by gamma of 0.5. Gamma<1 therefore we
%enhancing contrast in the dark regions
subplot(2,3,3), imshow(powerLawBoat2)

% %histogram of enhanced contrast boat
subplot(2,3,6), histogram(powerLawBoat2, 'BinLimits',[0 256],'BinWidth',1);

%powerLawBoat2 is for task 4 step 3 - does not work yet
powerLawBoat2 = uint8(round((double(boat).^0.5)/(255.0^(0.5-1))));
%linearStretchingBoat = (boat * 1.7) - -85
%subplot(2,3,5), imshow(linearStretchingBoat)
