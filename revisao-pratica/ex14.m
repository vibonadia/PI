#	Prático14) Considere o sinal unidimensional dado por  		s(x)=sen(x)+1/3sen(3x)+1/5sen(5x)+1/7sen(7x)+1/9sen(9x). 
#	O sinal acima está se aproximando de um tipo de onda especial. Você conseguiria dizer de qual forma de onda estamos falando? 
#	Exiba o gráfico desse sinal e observe o seu comportamento. Esse exercício demonstra como as altas frequências estão associadas à variações abruptas do sinal, como bordas e ruídos.

clc all, close all
s = 0;
x = 0:0.1:1000;
	for (i=1:2:9)
		s=( 1/i) * sin(i*x) + s;
	end

plot(x,s)

#	Quando apresentamos o gráfico desse sinal, vemos uma onda com formas quadradas, elas estão mostrando bordas e ruídos.