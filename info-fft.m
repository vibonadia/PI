%carrega uma imagem (em tons de cinza)
imagem = imread('/home/viviane/Desktop/PI/Banco_de_Imagens/lena_cinza.bmp');

%muda o mapa de cores
colormap(gray(256));

%transformada de fourier
fft_imagem = fft2(imagem);

[x, y] =  size(fft_imagem);

%modulo da transformada de fourier
modulo=sqrt(real(fft_imagem([1:x],[1:y])).^2 + imag(fft_imagem([1:x],[1:y])).^2);

%informacao de fase da trans de fourier
fase([1:x],[1:y]) = (fft_imagem([1:x], [1:y])./modulo([1:x], [1:y]));
fase_final = ifft2(fase);

%exibe as imagens
subplot(2,3,1), image(imagem), title('Lena');
subplot(2,3,2), image(modulo), title('Informacao de modulo da FFT');
subplot(2,3,3), imshow(fase_final), title('Informacao de fase da FFT');