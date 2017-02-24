function classifyUsingKNN(test_images, train_images, train_labels, idx, knn)
    % note that test_images and train_images are in col format, ie one col
    % = one image

    fprintf('Classifying image [%d] using [%d]-NN...\n', idx, knn);
    viewImage(test_images, idx);
    % using transpose to convert to row format
    nLabel = knnclassify(test_images(:, idx)', train_images', train_labels, knn);
    fprintf('Label is [%d]\n', nLabel);
end