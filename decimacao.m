clear all
close all
%imagem em tons de cinza 512x512
imagem = imread('Imagens/4.2.03.jpg');

%muda o mapa de cores
colormap(gray(256));

[x, y] = size(imagem);

%pixel skipping
skipping = imagem([1:2:x],[1:2:y]); 

%media dos pixels
l = 1;
for i = 1:2:x
	m = 1;
	for j = 1:2:y
		if(j<=y  && i <= x)		
			media(l,m) = imagem(i, j)/4 + imagem(i, j+1)/4 + imagem(i+1, j+1)/4 + imagem(i+1, j)/4;
			m  = m+1;
		endif		
		
	end
	l = l+1;
end

%FFT
imagem_fft  = fft2(imagem);
crop_fft = imagem_fft([129:384], [129:384]);
crop_ifft = ifft2(crop_fft);

subplot(2, 2, 1); image(imagem); title('Imagem Original');
subplot(2, 2, 2);image(skipping); title('Skipping');
subplot(2, 2, 3);image(media); title('Media');
subplot(2, 2, 4);image(real(crop_ifft)); title('Cropping FFT');