function diff = demo03(maxTestImages)
   % addpath('./windows');
    addpath('C:/MyMatlab/lib/libsvm-3.20/windows');
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

    fprintf('STEP 4: Train a classifier using SVM\n');
    train_labels_subset = train_labels(1:2000, :);
    train_images_subset = (train_images(:, 1:2000))';
    model = svmtrain(double(train_labels_subset), double(train_images_subset));
    
    fprintf('STEP 5: Classify (randomly) a set of images using SVM\n');
    [predicted_label] = svmpredict(test_labels, test_images', model);    
    return;
    
    nNumIncorrectImgs = size(diff, 1);
    
    for i=1:nNumIncorrectImgs
        nFailedID = diff(i);
        fprintf('Incorrect recoginition ID: [%d]\n', nFailedID);
        viewImage(test_images, nFailedID);
        nGTLabel = test_labels(nFailedID);
    end
  
end