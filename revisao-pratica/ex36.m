clear all, close all
colormap(gray(256));;

for i=1:256
	for j=1:256
		if (i >64 && i<192)&&(j>64 && j<192)
			y(i,j) = 127; #cor do quadrado interno
		else
			y(i,j) =90; #cor do quadrado externo
		endif
		
		
	endfor	
endfor
#===================================================
for i=1:256
	for j=1:256
		if (i >64 && i<192)&&(j>64 && j<192)
			x(i,j) = 127; #cor do quadrado interno
		else
			x(i,j) =166;#cor do quadrado externo
		endif
		
		
	endfor	
endfor


subplot(1, 2, 1), image(y), title('Informacao de fase');
subplot(1, 2, 2), image(x), title('Informacao de fase');

