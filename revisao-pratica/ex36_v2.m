#	 Utilize o Octave e construa uma imagem de dois quadrados
#	Os dois quadrados centrais possuem intensidades iguais a 127, considerando um colormap de 256 níveis de cinza. 
#	O quadrado maior do lado esquerdo corresponde a uma intensidade de 90 e o do lado direito de 166. 
#	Observe a imagem na tela do computador e verifique que, muito embora os valores dos quadrados menores tenham o mesmo nível de intensidade, visualmente aparentam ser ligeiramente diferentes. Isso acontece pois nosso sistema visual responde diferentemente a mesmos valores  de intensidade dependendo do contraste dos pixels vizinhos.
#	Faça diversos testes variando os valores dos quadrados maiores, mantendo os valores do quadrados interiores iguais e verifique se a diferença perceptual aumenta ou diminui. 
#	Finalmente, mantendo os valores originais dos tons de cinza dos quadrados maiores, altere os valores de cada um dos quadrados menores de forma que visualmente pareçam iguais. Discuta o resultado com seus colegas e verifique se esses valores são os mesmos para todos ou se ha diferenças visuais dependendo da pessoa que observa.
clear all, close all

#alterar os calores atribuidos para testas a percepcao visual
I([1:80],[1:80]) = 90; #quadrado direito maior
I([1:80],[81:160]) = 166; #quadrado esquerdo maior

I([21:61],[21:61]) = 200; #quadrado direito menor
I([21:61],[101:141]) = 200; #quadrado esquerdo menor

colormap(gray(256));
image(I);