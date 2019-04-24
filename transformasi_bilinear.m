close all
clear all

function G = tbilin(F, a1, a2, a3, a4, b1, b2, b3, b4)
% Fungsi untuk melakukan transformasi bilinear

dimensi = size(F);
tinggi = dimensi(1);
lebar = dimensi(2);

for y=1 : tinggi
    for x=1 : lebar
        x2 = a1 * x + a2 * y + a3 * x * y + a4;
        y2 = b1 * x + b2 * y + b3 * x * y + b4;

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

F = imread('aa.jpg');
G = tbilin(F, 1.2,0.1,0.005,-45,0.1,1,0.005,-30);

figure
subplot(1,2,1)
imshow(F)

subplot(1,2,2)
imshow(G);