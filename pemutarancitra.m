close all
clear all
clc

F=imread('D:\AA Belajar\Pengolahan Citra\pp.jpg');
[tinggi, lebar] = size(F);
sudut = 10; % Sudut pemutaran

rad=pi*sudut/180;
cosa = cos(rad);
sina = sin(rad);

F2 = double(F);
for y=1 : tinggi
  for x=1 : lebar
    x2=round(x*cosa+y*sina);
    y2 = round(y*cosa-x*sina);
    if(x2>=1) && (x2<=lebar) && ...
      (y2>=1) && (y2<=tinggi)
       G(y,x) = F2(y2,x2);
    else
       G(y,x) =0;
    endif
  endfor
endfor

G=uint8(G);

figure
subplot(1,2,1)
imshow(F)

subplot(1,2,2)
imshow(G);