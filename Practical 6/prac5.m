[images, labels] = loadPedestrianDatabase('pedestrian_train.cdataset');

reshapeImage = reshape(images(1,:), 160, 96);

rescaleImage = rescale(reshapeImage, 0, 255);

featureVector = hog_feature_vector(rescaleImage);

showHog(featureVector, [160 96]);