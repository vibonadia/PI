clear all
close all

#carrega imagens
f = imread('imagens/5.1.12.jpg');

#para exibir a f2 usar colormap 128
#f3 colormap 64 e assim por diante
colormap(gray(32));

f2 = f /2; #alterar a intensidade para 128
f3 = f /4; #alterar a intensidade para 64
f4 = f /8; #alterar a intensidade para 32
f5 = f /16; #alterar a intensidade para 16
f6 = f /32; #alterar a intensidade para 8
f7 = f /64; #alterar a intensidade para 4
f8 = f /128; #alterar a intensidade para 2

#plot
subplot(2, 4, 1),image(f2), title('Intensidade 128');
subplot(2, 4, 2),image(f3), title('Intensidade 64');
subplot(2, 4, 3),image(f4), title('Intensidade 32');
subplot(2, 4, 4),image(f5), title('Intensidade 16');
subplot(2, 4, 5),image(f6), title('Intensidade 8');
subplot(2, 4, 6),image(f7), title('Intensidade 4');
subplot(2, 4, 7),image(f8), title('Intensidade 2');
subplot(2, 4, 8),image(f), title('Original');