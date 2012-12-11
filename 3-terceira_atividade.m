#	a) aplique a máscara abaixo de um filtro passa-alta sobre a imagem sem ruído de um dos conjuntos de testes;
#	h3 =  ([0 -1 0; -1 5 -1; 0 -1 0]);
#	b) aplique a máscara h3 sobre uma das observações ruidosas. Compare o resultado com o obtido no item anterior. O que você pode concluir?
#	c) Finalmente, aplique um filtro passa-baixa sobre uma das observações ruidosas seguido da aplicação do filtro dado pela máscara h3. O que você conclui? Compare com os resultados obtidos nos itens (a) e (b).

clear all
close all

#carrega imagens
f = imread('imagens/relogio/relogio.jpg');
f1 = imread('imagens/relogio/relogio1.jpg');

colormap(gray(256));
h3 =  ([0 -1 0; -1 5 -1; 0 -1 0]);
h4 =   1/5 * ([0 1 0; 1 1 1; 0 1 0]);

A = conv2(f, h3, 'same');
B = conv2(f1, h3, 'same');

C = conv2(f1, h4, 'same');
C = conv2(C, h3, 'same');

subplot(2, 3, 1),image(f), title('Imagem Original');
subplot(2, 3, 2),image(f1), title('Imagem Ruidosa');

subplot(2, 3, 4),image(A), title('Passa Alta - im sem ruido');
subplot(2, 3, 5),image(B), title('Passa Alta - im com ruido');
subplot(2, 3, 6),image(C), title('Passa Baixa e Passa Alta');