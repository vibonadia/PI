#	Calcule a DFT bidimensional da imagem da Lena (use a fft2 do Octave). 
#	A partir da DFT, gerar duas outras matrizes. A matriz MAG com o seu módulo e uma matriz ANGLE com o módulo igual a 1 e a fase igual à da DFT da Lena. 
#	Recupere a imagem somente a partir da matriz MAG. Visualize convenientemente o resultado com a função  image do Octave. #	
#	Posteriormente, recupere a imagem somente a partir da matriz ANGLE. Visualize o resultado convenientemente (para isso analise os valores e determine uma forma adequada para a visualização). 
#	Compare os resultados obtidos com a recuperação da imagem apenas com a informação de fase e apenas com a informação de magnitude. O que podemos concluir?
clear all, close all

f = imread('../imagens/4.2.04.jpg');
colormap(gray(256));
[x, y] = size(f);
fft_f = fft2(f);

#modulo
MAG = sqrt(real(fft_f([1:x],[1:y])).^2 + imag(fft_f([1:x],[1:y])).^2);
#fase
ANGLE = (fft_f([1:x], [1:y])./MAG([1:x], [1:y]));

recupera_ANGLE = ifft2(ANGLE);
recupera_ANGLE = abs(recupera_ANGLE);

#Imagem no intervalo de 0 a 256
recupera_ANGLE = (recupera_ANGLE([1:x], [1:x]) .- min(min(recupera_ANGLE))) ./(max(max(recupera_ANGLE)) -min(min(recupera_ANGLE)));
recupera_ANGLE = recupera_ANGLE * 256;

max(max(recupera_ANGLE))
min(min(recupera_ANGLE))

#plot
subplot(1, 2, 1), image(recupera_ANGLE), title('Informacao de fase');
subplot(1, 2, 2), image(MAG), ('Magnitude da imagem');