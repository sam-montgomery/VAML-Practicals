function prediction = KNNTesting(testImage, modelNN, K)
    for i=1:length(modelNN.neighbours)
        dEucs(i,1) = EuclideanDistance(testImage, modelNN.neighbours(i,:));
        dEucs(i,2) = i;
    end
    dEucs = sortrows(dEucs);
    for i=1:K 
        labels(i:1) = modelNN.labels(dEucs(i,2));
    end
    
    prediction = mode(labels);
end
