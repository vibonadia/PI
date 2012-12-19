# 	Pegue uma das imagens disponibilizadas no moodle. Visualize o módulo, a parte real e a parte imaginária da transformada de Fourier. 
#	Considere o artifício descrito em aula para a visualização da transformada e determine as regiões de baixa e alta frequências na imagem visualizada. Como essas regiões estão distribuídas?

clear all, close all
#carrega uma imagem
f = imread('../imagens/4.2.04.jpg');

#muda o mapa de cores
colormap(gray(256));

#transformada de fourier
fft_imagem = fft2(f);

[x, y] =  size(fft_imagem);


real_imagem = real(fft_imagem); #parte real
modulo=sqrt(real(fft_imagem([1:x],[1:y])).^2 + imag(fft_imagem([1:x],[1:y])).^2); #modulo
imaginaria = imag(fft_imagem); #parte imaginaria

#exibe as imagens
subplot(2,2,1), image(imagem), title('Lena');
subplot(2,2,2), image(real_imagem), title('Real');
subplot(2,2,3), image(modulo), title('Modulo');
subplot(2,2,4), image(imaginaria), title('Parte Imaginaria');
