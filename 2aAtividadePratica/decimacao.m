clear -all;
%carrega uma imagem (em tons de cinza)
colormap(gray(256));
imagem = imread('../imagens/5.1.12.jpg');
[x, y] = size(imagem);
%Máscara para média 2x2
m1=[1 1; 1 1 ];
% A soma dos elementos da matriz deve ser 1.
m=m1*0.25;
%Pixel Skipping
prev1=imagem([1:2:x],[1:2:y]);
deci1= prev1;
%Média com máscara 2x2
prev2=conv2(imagem, m,'same');
deci2=prev2([1:2:x],[1:2:y]);
%Cropping Fourier
fou=fft2(imagem);
prev3a=fftshift(fou);
prev3b=prev3a([x/4:1:3*x/4-1], [x/4:1:3*y/4-1]);
deci3=ifft2(prev3b);
subplot(2,2,1), image(imagem),title("Original");
subplot(2,2,2), image(deci1),title("Pixel Skipping");
subplot(2,2,3), image(deci2),title("Pixel Average");
subplot(2,2,4), image(real(deci3)),title("Cropping Fourier");
