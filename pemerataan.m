close all;
clear all;
clc;

img=imread('images.jpg');
[tinggi, lebar] = size(img);

img2=double(img);
for baris=2 : tinggi-1
  for kolom=2 : lebar-1
    jum= img2(baris-1, kolom-1)+...
         img2(baris-1, kolom)+...
         img2(baris, kolom+1)+...
         img2(baris, kolom-1)+...
         img2(baris, kolom+1)+...
         img2(baris+1, kolom-1)+...
         img2(baris+1, kolom)+...
         img2(baris+1, kolom+1);
         G(baris, kolom)=uint8(1/9*jum);
  endfor
endfor

figure
subplot(1,2,1)
imshow(img)

subplot(1,2,2)
imshow(G);