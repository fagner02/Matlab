%% 1
% As funções de base ortogonal podem ser usadas para decomposições de
% funções em outras para representar caracteristicas especififcas que 
% possam ser uteis assim como na transformada de fourier que representa 
% uma função no dominio da frequencia


%% 2
% Uma matriz de números complexos, onde a parte real representa amplitude e a parte
% imaginária representa fase.
A = (1/sqrt(6))*dftmtx(6)

% Cada elemento da matriz mostra a transformada discreta de cosseno dos elementos da
% matriz original. A DCT é amplamente utilizada em processamento de sinais e compressão
% de dados para transformar um sinal de domínio espacial em seu equivalente no domínio de
% frequência.
B = dctmtx(6)

% Cada elemento da matriz mostra a transformada hadamard dos elementos da matriz
% original. A matriz resultado é um vetor de coeficientes que representam a contribuição de
% cada componente de frequência no vetor original. Esses coeficientes podem ser
% interpretados como amplitudes no domínio de hadamard.
C = hadamard(4)

%% 3
img = imread('lena.png');
img = double(img) / 255.0;
imshow(img);

[A,H,V,D] = haart2(img, 2);

% A função retorna o coeficiente de aproximação e os niveis de detalhe vertical,
% horizontal e diagonal como mostram as imagens
figure
subplot(2, 2, 1);
imshow(A);
title('Haar');

subplot(2, 2, 2);
imshow(H{1});
title('Horizontal');

subplot(2, 2, 3);
imshow(V{1});
title('Vertical');

subplot(2, 2, 4);
imshow(D{1});
title('Diagonal');