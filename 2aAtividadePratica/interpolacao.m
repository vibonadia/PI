clear -all;
%carrega uma imagem (em tons de cinza)
colormap(gray(256));
imagem = imread('../imagens/5.1.12.jpg');
[x, y] = size(imagem);
expan=zeros(512,512);
%Expandindo a Imagem
for i=1:x
	for j=1:y
		expan(2*i-1,2*j-1)= imagem(i, j);
	end
end
%Máscara para ordem Zero
h0=[1 1 0; 1 1 0; 0 0 1];
%Máscara para ordem 1
h1=[0.25 0.5 0.25; 0.5 1 0.5;0.25 0.5 0.25 ];
%Máscara para ordem > 1. A soma dos elementos da matriz deve ser 1.
h=h1*0.25;
inter0=conv2(expan,h0,'same');
inter1=conv2(expan,h1, 'same');
inter2=conv2(inter1,h,'same');
inter3=conv2(inter2,h,'same');
subplot(2,3,1), image(imagem),title("Original");
subplot(2,3,2), image(expan),title("Expandida");
subplot(2,3,3), image(inter0),title("Ordem 0");
subplot(2,3,4), image(inter1),title("Ordem 1");
subplot(2,3,5), image(inter2),title("Ordem 2");
subplot(2,3,6), image(inter3),title("Ordem 3");

