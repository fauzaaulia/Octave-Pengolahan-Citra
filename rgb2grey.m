close all
clear all
clc

input_image=imread('pp.jpg');
greyscale_image=rgb2gray(input_image);

figure
subplot(1,2,1)
imshow(input_image)
title('rgb image')

subplot(1,2,2)
imshow(greyscale_image);
title('geyscale image')

