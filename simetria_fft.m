clear all
close all
%Aula: 12/11/12
%carrega uma imagem [tons de cinza]
imagem = imread('Banco_de_Imagens/lena_cinza.bmp');

%ajusta mapa de cores da imagem
colormap(gray(256));

%transformada de fourier
fft_imagem = fft2(imagem);

%minimo e maximo do valor absoluto da transformada de fourier
min_fft = min(min(abs(fft_imagem)));
max_fft = max(max(abs(fft_imagem)));

%Ajuste do intervalo da transformada de fourier
%O valor que multiplica o log pode ser ajustado para uma melhor visualizacao
nova_imagem = 20 * log( 1+ abs(fft_imagem));

%minimo e maximo do valor absoluto da transformada de fourier com intervalo ajustado 
min_fft_aj = min(min(nova_imagem));
max_fft_aj = max(max(nova_imagem));

%desloc para o centro do quadrado das frequencias
nova_imagem_shift = fftshift(nova_imagem);

%exibicao das imagens
subplot(2, 2, 1), image(imagem), title('Imagem original');

subplot(2, 2, 2), image(abs(fft_imagem)), title('Modulo da fft');
message = sprintf("\nIntervalo do valor absoluto da fft sem ajuste:\nMaximo: %d\nMinimo:%d", min_fft, max_fft);
text(15, 15, message, 'Color', 'b', 'FontWeight', 'bold');

subplot(2, 2, 3), image(nova_imagem), title('Espectro de Fourier sem deslocamento');
message = sprintf("\nIntervalo do valor absoluto da fft ajustado:\nMaximo: %d\nMinimo:%d", min_fft_aj, max_fft_aj);
text(15, 15, message, 'Color', 'b', 'FontWeight', 'bold');

subplot(2, 2, 4), image(nova_imagem_shift), title('Espectro de Fourier deslocado');