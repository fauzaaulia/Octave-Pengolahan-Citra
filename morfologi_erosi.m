clear all
close all
pkg load image

Img = imread('pp.jpg');
BW = im2bw(Img, 0.15);
H = ones(11,11);
H(1,1)=0; H(1,2)=0; H(2,1)=0;
H(10,1)=0; H(10,2)=0; H(12,1)=0;
H(1,10)=0; H(1,11)=0; H(2,11)=0;
H(10,11)=0; H(11,10)=0; H(11,11)=0;
G = imerode(BW,H);

subplot(1,3,1); imshow(Img); title('asli');
subplot(1,3,2); imshow(BW); title('black n white');
subplot(1,3,3); imshow(G, [0 1]); title('erosi');