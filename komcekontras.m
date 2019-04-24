close all
clear all
clc

input_image=imread('pp.jpg');

figure
subplot(2,2,1)
imshow(input_image)

subplot(2,2,2)
img_cerah=input_image+30;
imshow(img_cerah)

subplot(2,2,3)
img_kontras=input_image*2.5;
imshow(img_kontras);

subplot(2,2,4)
img_cerah=input_image+30;
img_kombinasi=img_cerah*2.5;
imshow(img_kombinasi);