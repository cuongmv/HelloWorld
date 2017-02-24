function diff = demo01(maxTestImages)
    addpath('./Data');
    addpath('./MATLABCode');
    fprintf('This is a simple demo for handwritten digit recognition.\n');
    fprintf('STEP 1: Load data ...\n');
    [train_images, train_labels, test_images, test_labels] = loadMNISTData();
    nNumTrainImgs = size(train_images, 2);
    nNumTestImgs = size(test_images, 2);
    fprintf('Num of training images: [%d]\n', nNumTrainImgs);
    fprintf('Num of testing images: [%d]\n', nNumTestImgs);
 
    fprintf('STEP 2: View (randomly) one image from training set\n');
    nIdx = round(1+(nNumTrainImgs-1)*rand());
    viewImage(train_images, nIdx);

    fprintf('STEP 3: View (randomly) one image and its label from training set\n');
    viewImageAndLabel(train_images, train_labels, nIdx);

    fprintf('STEP 4: Classify (randomly) one image using kNN\n');
    knn = 1;
    nTestIdx = round(1+(nNumTestImgs-1)*rand());
    classifyUsingKNN(test_images, train_images, train_labels, nTestIdx, knn);

    fprintf('STEP 5: Classify (randomly) a set of images using kNN\n');
    maxTestImages = 500;
    diff = classifyUsingKNNAll(test_images(:, 1:maxTestImages), test_labels(1:maxTestImages), train_images, train_labels, knn);
end