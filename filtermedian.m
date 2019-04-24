close all;
clear all;
clc;

F = imread('images.jpg');
[tinggi, lebar] = size(F);
 
for baris=2 : tinggi-1
    for kolom=2 : lebar-1
        data = [F(baris-1, kolom-1) ...
              F(baris-1, kolom)  ...
              F(baris-1, kolom+1)  ...
              F(baris, kolom-1)  ...
              F(baris, kolom)  ...
              F(baris, kolom+1)  ...
              F(baris+1, kolom-1)  ...
              F(baris+1, kolom)  ...
              F(baris+1, kolom+1)];
         % Urutkan
         for i=1 : 8
             for j=i+1 : 9
                 if data(i) > data(j)
                     tmp = data(i);
                     data(i) = data(j);
                     data(j) = tmp;
                 end
             end
         end
         % Ambil nilai median
         G(baris, kolom) = data(5);
    end
end
 
figure
subplot(1,2,1)
imshow(F)

subplot(1,2,2)
imshow(G);