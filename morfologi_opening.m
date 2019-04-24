clear all
close all
pkg load image

Img = imread('pp.jpg');
BW = im2bw(Img, 0.1);
H = [
      0 0 1 1 1 1 1 0 0
      0 1 1 1 1 1 1 1 0
      1 1 1 1 1 1 1 1 1
      1 1 1 1 1 1 1 1 1
      1 1 1 1 1 1 1 1 1
      1 1 1 1 1 1 1 1 1
      1 1 1 1 1 1 1 1 1
      0 1 1 1 1 1 1 1 0
      0 0 1 1 1 1 1 0 0];
G = imdilate(BW, H);
M = imerode(G,H);

subplot(1,3,1); imshow(Img); title('asli');
subplot(1,3,2); imshow(BW); title('black n white');
subplot(1,3,3); imshow(M, [0 1]); title('opening');