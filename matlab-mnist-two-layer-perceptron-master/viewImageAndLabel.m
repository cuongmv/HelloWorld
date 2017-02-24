function viewImageAndLabel(images, labels, idx)
    img = images(:, idx); %get img data - one column
    img2D = reshape(img, 28, 28); %reshape
    imshow(img2D); % show image
    fprintf('Label of image [%d] is [%d]\n', idx, labels(idx));
end