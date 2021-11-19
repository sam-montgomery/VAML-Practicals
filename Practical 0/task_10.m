% STEP 1: read image
I=imread('parrot.jpg');

%STEP 2: display image
%image(I)
%imagesc(I)
%imshow(I)

%STEP 3: Increase the values of all the pixels by 50, changes brightness
I2 = I+50;
%image(I2)

%transform image to double before processing it
%I = double(I)
%image(I)

%STEP 4: Store your modified image in a file by using:
%imwrite(I2, 'parrot2.jpg','JPEG');

%STEP 5: Extract one of the colour channels (for example the first channel R) from the image matrix
%takes the first row of the third dimension - the red of RGB
R=I(:,:,1);
%image(R)
%imagesc(R)
%imshow(R)

%STEP 6: Select the image in red and blue colours and apply a grey scale colormap as follows:
figure(2), imagesc(R), colormap(gray)

%STEP 7: Visualise the same image with different levels of quantization, by writing the following instructions
%figure, imagesc(R), colormap(gray(128)), title('quantization: 128 levels (7 bpp)')
%figure, imagesc(R), colormap(gray(64)), title('quantization: 64 levels (6 bpp)')
%figure, imagesc(R), colormap(gray(16)), title('quantization: 16 levels (4 bpp)')
%figure, imagesc(R), colormap(gray(4)), title('quantization: 4 levels (2 bpp)')

%STEP 8: Store your grey image in a file by using:
imwrite(R,'parrot_gray.jpg','JPEG');




