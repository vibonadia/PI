close all, clear all
lena = imread('../imagens/4.2.04.jpg');
figure, colormap(gray(256)), image(lena), title('256');
figure, colormap(gray(1024)), image(lena), title('1024');

