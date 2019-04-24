close all
clear all
clc
pkg load image

input_image=imread('pp.jpg');
greyscale_image=rgb2gray(input_image);

figure
subplot(1,2,1)
imshow(greyscale_image)

subplot(1,2,2)
imhist(greyscale_image);