close all
clear all
clc

input_image=imread('pp.jpg');

figure
subplot(1,3,1)
imshow(input_image)

subplot(1,3,2)
img_invert=255-input_image;
imshow(img_invert);

subplot(1,3,3)
img_invert2=150-input_image;
imshow(img_invert2);