close all
clear all
clc
pkg load image

input_image=imread('pp.jpg');
greyscale_image=rgb2gray(input_image);

figure
subplot(2,2,1)
imshow(greyscale_image)

subplot(2,2,2)
imhist(greyscale_image)

result_image=histeq(double(greyscale_image)/255,256);
subplot(2,2,3)
imshow(uint8(255*result_image))

subplot(2,2,4)
imhist(uint8(255*result_image));