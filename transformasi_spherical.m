close all
clear all

F = imread('pp.jpg');

function G = spheri(F, rho)
% SPHERI Berfungsi untuk melakukan transformasi 'spherical'

dimensi = size(F);
tinggi = dimensi(1);
lebar = dimensi(2);
xc = round(lebar / 2);
yc = round(tinggi / 2);

rmaks = xc;  % 1/2 lebar gambar

for y=1 : tinggi
    for x=1 : lebar
        r = sqrt((x-xc)^2+(y-yc)^2);
        z = sqrt(rmaks^2-r^2);
        bx = (1 - 1/rho) * asin((x-xc)/...
             sqrt((x-xc)^2+z^2));
        by = (1 - 1/rho) * asin((y-yc)/...
             sqrt((y-yc)^2+z^2));
        if r <= rmaks
            x2 = x - z * tan(bx);
            y2 = y - z * tan(by);
              else
                x2 = x;
                y2 = y;
        endif

        if (x2=1) && (x2<=lebar) && ...
           (y2=1) && (y2<=tinggi)

           % Lakukan interpolasi bilinear 
           p = floor(y2);
           q = floor(x2);
           a = y2-p;
           b = x2-q;

           if (floor(x2)==lebar) || ...
              (floor(y2) == tinggi)
              G(y, x) = F(floor(y2), floor(x2));
              else
                intensitas = (1-a)*((1-b)*F(p,q) +  ...
                b * F(p, q+1)) +      ...
                a *((1-b)* F(p+1, q) + ...
                b * F(p+1, q+1));

              G(y, x) = intensitas;
           endif
           else
              G(y, x) = 0; 
           endif
      endfor   
 endfor
G = uint8(G);
endfunction

G = spheri(F, 1.8);

figure
subplot(1,2,1)
imshow(F)

subplot(1,2,2)
imshow(G);