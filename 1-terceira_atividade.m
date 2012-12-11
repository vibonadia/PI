#	1) Considere um dos conjuntos de imagens ruidosas para testes disponibilizados no moodle (relogio ou lena).
#	a) visualize a imagem “lena.jpg” ou “relogio.jpg” (depende do conjunto de imagens escolhido);
#	b) visualize uma das versões ruidosas (imagens numeradas de 1 a 20 para o conjunto 1 e de 1 a 10 para o conjunto2);
#	c) Faça a média aritmética de 5 imagens ruidosas, isto é, some 5 imagens de um conjunto ruidoso e divida por 5;
#	d) Visualize o resultado da média do exercício acima.
#	e) Repita o exercício considerando a média de 10 observações ruidosas;
#	f) Que conclusão você pode chegar avaliando os resultados obtidos?


clear all
close all

#carrega imagens
f = imread('imagens/relogio/relogio.jpg');
f1 = imread('imagens/relogio/relogio1.jpg');
f2 = imread('imagens/relogio/relogio2.jpg');
f3 = imread('imagens/relogio/relogio3.jpg');
f4 = imread('imagens/relogio/relogio4.jpg');
f5 = imread('imagens/relogio/relogio5.jpg');
f6 = imread('imagens/relogio/relogio6.jpg');
f7 = imread('imagens/relogio/relogio7.jpg');
f8 = imread('imagens/relogio/relogio8.jpg');
f9 = imread('imagens/relogio/relogio9.jpg');
f10 = imread('imagens/relogio/relogio10.jpg');

colormap(gray(256));

#filtro media
media5 = f1/5 +  f2/5 + f3/5 +  f4/5 + f5/5 ;
media10 = f1/10 +  f2/10 + f3/10 +  f4/10 + f5/10 +  f6/10 + f7/10 +  f8/10 + f9/10 +  f10/10;

#plot
subplot(2, 2, 1),image(f), title('Imagem original');
subplot(2, 2, 2),image(f1), title('Imagem ruidosa');
subplot(2, 2, 3),image(media5), title('Media com 5 imagens');
subplot(2, 2, 4),image(media10), title('Media com 10 imagens');