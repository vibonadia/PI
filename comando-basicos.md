**imread** carrega uma imagem, recebe o caminho da imagem como parametro.  
  
**imfinfo** mostra as informações da imagem, recebe o caminho da imagem como parametro.  
  
**imwrite** grava a imagem no disco  
  
**image** mostra a imagem (apenas se a imagem só tiver numeros inteiros)  
  
**imshow** mostra a imagem mesmo com numeros complexos, tambem faz um tratamento da imagem antes de mostra-la  
  
**imageesc** ajusta o colormap para poder mostrar a imagem  
  
**ones** cria uma matriz só com números 1s (uns)  
  
**zeros** cria uma matriz só com números 0s (zeros)  
  
Octave aceita, basicamente 3 tipos de imagens:  
* *gray* - imagem em escala de cinza;  
* *ind* - cada indice da matriz corresponde a uma cor na escala RGB;  
* *rgb* - cada dimensao da matriz corresponde a uma cor dentro da escala RGB.  
É possível fazer transformações entre esses 3 tipos de imagem.  
  
Também é possivel conventer entre:  
* hsv;  
* rgb;  
* ntsc.  
    
---
##Colormaps
---
**colormap** ajusta do colormap para o mapeamento desejado, sendo "default" o colormap default  
quando não espeficicado o parâmetro do colormap criado, o padrão é 64.
  
**autumn** cria um colormap, varia do vermelho ao laranja, passando pelo amarelo  
  
**bone** cria um colormap, varia do preto ao branco, com tons cinza-azulados  
  
**cool** cria um colormap, varia do ciano ao magenta  
  
**cooper** cria um colormap, varia do preto a um tom cobre de luz (?)  
  
**flag** cria um colormap, através de ciclos de vermelho, branco, azul e preto com cada mudança de índice.  
  
**gray** cria um colormap, variando do preto ao branco, passando pelo cinza.  
  
**continua a escrever aqui depois**
---
**hold("on");** mantem a imagem, para poder plotar algo em cima dela depois.  
**hold("off");** 'desliga' o hold;  
  
**plot** plota algo na imagem  

##filtros
---
**conv2** faz a convolução da primeira matriz com a segunda.

**fft2** faz a transformada de Fourier na matriz.

**ifft2** faz a inversa da transformada de Fourier na matriz.
