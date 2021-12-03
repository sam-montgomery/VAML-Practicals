addpath  .\SVM-KM\

[images, labels] = loadPedestrianDatabase('pedestrian_train.cdataset');

for i=1:length(images(:,1))
    reshapeImage = reshape(images(i,:), 160, 96);

    rescaleImage = rescale(reshapeImage, 0, 255);

    featureVector = hog_feature_vector(rescaleImage);
    
    HOGVectors(i,:) = featureVector;
end

SVMModel = SVMtraining(HOGvectors, labels);

[testImages, testLabels] = loadPedestrianDatabase('pedestrian_test.cdataset');


for i=1:length(testImages(:,1))
    reshapeImage = reshape(testImages(i,:), 160, 96);

    rescaleImage = rescale(reshapeImage, 0, 255);

    featureVector = hog_feature_vector(rescaleImage);
    
    HOGTestVectors(i,:) = featureVector;
    classificationResult(i,1) = SVMTesting(featureVector, SVMModel);
end

comparison = (labels==classificationResult);


Accuracy = sum(comparison)/length(comparison);



