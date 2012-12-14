clear all
close all
#vibonadia
#imagem em tons de cinza 256x256
imagem = imread('Imagens/5.1.12.jpg');

#muda o mapa de cores (tons de cinza)
colormap(gray(256));

[x, y] = size(imagem);

#matriz para as imagens resultantes da convolucao
replicacao = zeros(2*x, 2*y);
inter_bilinear = zeros(2*x, 2*y);
convol_cubica = zeros(2*x, 2*y);
spline_cubico = zeros(2*x, 2*y);

#faz a expansao
#exemplo
#Original
#1 2
#3 4
#Expandida
#1 0 2 0
#0 0 0 0
#3 0 4 0
#0 0 0 0
for i=1:x
	for j=1:y
		replicacao(2*i, 2*j) = imagem(i, j);
		inter_bilinear(2*i, 2*j) = imagem(i, j);
		convol_cubica(2*i, 2*j) = imagem(i, j);;
		spline_cubico(2*i, 2*j) = imagem(i, j);
	endfor
endfor

#mascara de convolucao (especificacao)
h0 = ([1 1 0; 1 1 0; 0 0 0]);
h1 = ([0.25 0.5 0.24; 0.5 1 0.5; 0.25 0.5 0.25]);

#replicacao
replicacao = conv2(replicacao, h0, 'same');

#interpolação bilinear
inter_bilinear = conv2(inter_bilinear, h1, 'same');

#convolucao cubica
convol_cubica = conv2(inter_bilinear, h1, 'same');

#spline cubico
spline_cubico = conv2(convol_cubica, h1, 'same');

subplot(2,3,1); image(imagem); title('Original');
subplot(2,3,2); image(replicacao); title('Replicacao');
subplot(2,3,3); image(inter_bilinear); title('Interpolacao Bilinear');
subplot(2,3,4); image(convol_cubica); title('Convolucao Cubica');
subplot(2,3,5); image(spline_cubico); title('Spline Cubico');
