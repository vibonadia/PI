%Viviane B. Santos
clear all
close all

%Imagem
f = imread('imagens/lena64.png');

[x, y] = size(f);
colormap(gray(256));

%Expande Imagem
f_exp = zeros(2*x, 2*y);
f_exp(x/2 +1: x/2 + x,  y/2+1 : y/2 + y ) = f;


%Cria Gaussiana
variancia = 230; %parametro a definir no experimento
%gaussiana(x,y ) = 1/(2 * pi * var^2) * e ^- { [(x-256)^2 + (y-256)^2] / 2*var^2}
for i =  1:x
	for j = 1:y
	expoente(i, j) = -1 * (((i- x/2)**2 + (j - y/2)**2) / (2* variancia**2));
	endfor	
endfor
gaus =  (1/(2 * pi *  variancia**2)) .* exp(expoente);

%Expande Gaussiana
gausEx = zeros (2*x, 2*y);
gausEx(x/2+1:x/2+x, y/2+1:y/2+y) = gaus;

%Convolucao
f_conv = conv2(f_exp, gausEx, 'same');
image(f_conv);

%Normalização da imagem convoluida intervalo 0~255
fmaxi = max(max(f_conv));
fmini = min(min(f_conv));
aux = fmaxi - fmini;
f_normal = 255 * ((f_conv.- fmini)/(aux));

%---Filtro Pseudo inverso---%
%F(u,v) = (1/H(u,v)).g(u,v)
fft_gaus = fft2(gausEx); %funcao de espalhamento pontual
fft_degradada = fft2(f_normal); %fft da degradada

%f_inversa = (1./(fft_gaus .* ((x*2)**2))) .* (fft_degradada); %filtro
f_inversa = (1./ fft_gaus ).*(fft_degradada); %filtro
f_inversa = ifft2(f_inversa);

%Normalização da inversa  intervalo 0~255
fmaxi = max(max(abs(f_inversa)));
fmini = min(min(abs(f_inversa)));
aux = fmaxi - fmini;
f_inversa = 255 * ((abs(f_inversa).- fmini)/(aux));

%Inverte quadrantes
final = fftshift(f_inversa);
figure(1), colormap(gray(256)), image(f_normal), title('Imagem Degradada');
figure(2), colormap(gray(256)), image(final), title('Filtro Inverso na Imagem Degradada');