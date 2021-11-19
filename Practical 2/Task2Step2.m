boatNoise = noiseReduction(imread("boatnoise.jpg"), 3);

%Firstly load in normal boat image
figure('Name','Task2Step2');
subplot(1,4,1), imshow(boatNoise);
title('Original w/noise');

myB1 = [-1 0 1; -1 0 1; -1 0 1];
myB2 = [-1 -1 -1; 0 0 0; 1 1 1];

[Edges, Ihor, Iver] = edgeExtraction(boatNoise, myB1, myB2);
colormap('gray');

subplot(1,4,2), imagesc(Ihor);
title('Ihor');

subplot(1,4,3), imagesc(Iver);
title('Iver');

subplot(1,4,4), imagesc(Edges);
title('Edges');


