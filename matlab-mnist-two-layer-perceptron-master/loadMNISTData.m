function [train_images, train_labels, test_images, test_labels] = loadMNISTData()
    train_images = loadMNISTImages('.\Data\train-images.idx3-ubyte');
    train_labels = loadMNISTLabels('.\Data\train-labels.idx1-ubyte');
    test_images = loadMNISTImages('.\Data\t10k-images.idx3-ubyte');
    test_labels = loadMNISTLabels('.\Data\t10k-labels.idx1-ubyte');
end