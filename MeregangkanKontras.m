close all
clear all
clc

input_image=imread('pp.jpg');

figure
subplot(2,2,1)
imshow(input_image)

subplot(2,2,2)
img_kontras=input_image*2;
imshow(img_kontras)

subplot(2,2,3)
img_kontras2=input_image/2;
imshow(img_kontras2);

subplot(2,2,4)
img_cerah=input_image+150;
imshow(img_cerah);