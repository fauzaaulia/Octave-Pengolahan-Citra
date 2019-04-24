close all
clear all
clc

input_image=imread('pp.jpg');

%Size of image
[r c h]=size (input_image);

%ekstrak gambar
img1=input_image(:,:,1);
img2=input_image(:,:,2);
img3=input_image(:,:,3);

figure
subplot(2,2,1)
imshow(input_image)
title('RGB Color Image');

subplot(2,2,2)
imshow(img1)
title('RED Color Image');

subplot(2,2,3)
imshow(img2)
title('GREEN Color Image');

subplot(2,2,4)
imshow(img3)
title('BLUE Color Image');