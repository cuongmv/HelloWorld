function [diff] = classifyUsingKNNAll(test_images, test_labels, train_images, train_labels, knn)
    % note that test_images and train_images are in col format, ie one col
    % = one image
    % test_images: images of the test set
    % test_labels: labels of the test set (ground-truth)
    % train_images: images of the training set
    % train_labels: labels of the training set
    % knn: number of nearest-neighbor.
    
    numTestImgs = size(test_images, 2);
    fprintf('Classifying [%d] images using [%d]-NN...\n', numTestImgs, knn);
    aLabels = knnclassify(test_images', train_images', train_labels, knn);
    %compare with ground-truth
    diff = find(aLabels - test_labels);
    numIncorrectImgs = size(diff,1);
    fprintf('Number of incorrect classifications: [%d]\n', numIncorrectImgs);
    acc = (numTestImgs-numIncorrectImgs)*100/numTestImgs;
    fprintf('Accuracy: [%0.4f]\n', acc);
 end