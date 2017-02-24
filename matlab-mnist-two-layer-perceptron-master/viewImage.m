function viewImage(images, idx)
    fprintf('View image [%d]...\n', idx);
    img = images(:, idx); %get img data - one column
    img2D = reshape(img, 28, 28); %reshape
    imshow(img2D); % show image   
end