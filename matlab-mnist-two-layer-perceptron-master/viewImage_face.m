function viewImage_face(images, idx, width, height)
    fprintf('View image [%d]...\n', idx);
    img = images(:, idx); %get img data - one column
    img2D = reshape(img, width, height); %reshape
    imshow( double(img2D) / 255); % show image   
end