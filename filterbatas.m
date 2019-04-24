close all
clear all
clc

noise_img=imread('images.jpg');
[tinggi, lebar] = size(noise_img);

noise = noise_img;

for baris=2 : tinggi-1
  for kolom=2 : lebar-1
    minPiksel = min([
        noise_img(baris-1, kolom-1)...
        noise_img(baris-1, kolom)...
        noise_img(baris, kolom+1)...
        noise_img(baris, kolom-1)...
        noise_img(baris, kolom+1)...
        noise_img(baris+1, kolom-1)...
        noise_img(baris+1, kolom)...
        noise_img(baris+1, kolom+1)]);
    maxPiksel = min([
        noise_img(baris-1, kolom-1)...
        noise_img(baris-1, kolom)...
        noise_img(baris, kolom+1)...
        noise_img(baris, kolom-1)...
        noise_img(baris, kolom+1)...
        noise_img(baris+1, kolom-1)...
        noise_img(baris+1, kolom)...
        noise_img(baris+1, kolom+1)]);
    if noise_img(baris, kolom) < minPiksel
       noise(baris, kolom) = minPiksel;
    else
       if noise_img(baris, kolom) > minPiksel
          noise(baris, kolom) = minPiksel;
       else
          noise(baris, kolom) = noise_img(baris, kolom);
       endif
    endif
  endfor
endfor

figure
subplot(1,2,1)
imshow(noise_img)

subplot(1,2,2)
imshow(noise);