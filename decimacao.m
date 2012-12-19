#	Decimacao ca imagem utilizando as tecnicas de  skipping, media e Cropping
clear all
close all

#carrega uma imagem (em tons de cinza)
f = imread('imagens/4.2.03.jpg');
colormap(gray(256)); #muda mapa de cores

#Máscara para média 2x2
h = [1 1; 1 1 ];

# A soma dos elementos da matriz deve ser 1.
h2 = h*0.25;

[x, y] = size(f);

#pixel skipping
skipping_f = f([1:2:x],[1:2:y]); 
skipping2_f= skipping_f;

#Media com máscara 2x2
aux = conv2(f,  h2, 'same');
media = aux([1:2:x],[1:2:y]);

#Cropping Fourier
fft_f=fft2(f);
aux1 = fftshift(fft_f);
aux2 = aux1([128:1:383], [128:1:383]); #regiao central (baixa frequencia)
aux3 = fftshift(aux2);
cropping = ifft2(aux3);
cropping = abs(cropping);

#plots
figure, colormap(gray(256)), image(f), title('Original');
figure, colormap(gray(256)), image(skipping2_f), title('Skipping');
figure, colormap(gray(256)), image(media), title('Media');
figure, colormap(gray(1000)), image(cropping), title('Cropping');
