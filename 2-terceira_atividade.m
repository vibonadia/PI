#	a) aplique um filtro passa-baixa sobre uma das observações ruidosas. Um exemplo de uma máscara 3x3 para um filtro passa-baixa é dado por h1 = 1/9([1 1 1; 1 1 1; 1 1 1]);
#	b) refaça o exercício anterior considerando a extensão do filtro acima para máscaras de tamanho 5x5 e 7x7 de forma que os filtros preservem o nível DC da imagem;
#	c) aplique o filtro abaixo sobre uma das observações ruidosas: h2 = 1/5([0 1 0; 1 1 1; 0 1 0]);
#	d) você observa alguma diferença no resultado da aplicação do filtro h2 acima sobre uma das observações ruidosas com o resultado da aplicação do filtro h1? Que diferença é essa?
#	e) estenda o filtro h2 considerando máscaras de tamanho 5x5 e 7x7 e observe os resultados.
#	f) os resultados com as aplicações de filtros passa-baixa para minimização do ruído são melhores ou piores do que os resultados obtidos considerando a média aritmética de um conjunto de observações ruidosas como no primeiro exercício? Justifique.

clear all
close all

#carrega imagens
f = imread('imagens/relogio/relogio.jpg');
f1 = imread('imagens/relogio/relogio1.jpg');

colormap(gray(256));

#mascara
h1= 1/9*([1 1 1; 1 1 1; 1 1 1]);
h1_1 = 1/9*([1 1 1 1 1; 1 1 1 1 1; 1 1 1 1 1; 1 1 1 1 1; 1 1 1 1 1]);
h1_2 = 1/9*([1 1 1 1 1 1 1; 1 1 1 1 1 1 1; 1 1 1 1 1 1 1; 1 1 1 1 1 1 1; 1 1 1 1 1 1 1; 1 1 1 1 1 1 1; 1 1 1 1 1 1 1]);

h2 =  1/5 * ([0 1 0; 1 1 1; 0 1 0]);
h2_1 =  1/5 * ([0 0 1 0 0;0 1 1 1 0; 1 1 1 1 1; 0 1 1 1 0; 0 0 1 0 0]);
h2_2 =  1/5 * ([0 0 0 1 0 0 0; 0 0 1 1 1 0 0; 0 1 1 1 1 1 0; 1 1 1 1 1 1 1; 0 1 1 1 1 1 0; 0 0 1 1 1 0 0; 0 0 0 1 0 0 0]);

#filtros
A = conv2(f1, h1, 'same');
B1 = conv2(f1, h1_1, 'same');
B2 = conv2(f1, h1_2, 'same');
C = conv2(f1, h2, 'same');
E1 = conv2(f1, h2_1, 'same');
E2 = conv2(f1, h2_2, 'same');

#plot
subplot(3, 3, 1),image(f), title('Imagem Original');
subplot(3, 3, 2),image(f1), title('Imagem Ruidosa');

subplot(3, 3, 4),image(A), title('Masc h1 3x3');
subplot(3, 3, 5),image(B1), title('Masc h1 5x5');
subplot(3, 3, 6),image(B2), title('Masc h1 7x7');

subplot(3, 3, 7),image(C), title('Masc h2');
subplot(3, 3, 8),image(E1), title('Masc h2 5x5');
subplot(3, 3, 9),image(E2), title('Masc h2 7x7');