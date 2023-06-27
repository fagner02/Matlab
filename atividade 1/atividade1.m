%% Ler e mostrar imagem
I = imread("1.tiff");
figure, imshow(I);

%% Especificações da imagem no workspace
whos I;
%  Name         Size                  Bytes  Class    Attributes
%  I         1024x1024x3            3145728  uint8  

%% Canal azul da imagem
G = I(:,:,3);
figure, imshow(G);

%% Histograma da imagem
numofpixels = size(G, 1) * size(G, 2);
H = histogram(G,'Normalization','cumcount').Values / numofpixels * 255;
figure, bar(H);

%% Mostrar imagem com normalização do histograma
HI = aplicarHistograma(G, H);
figure, imshow(HI);

%% Escrever imagem criada a partir do histograma no formato png
imwrite(HI, "1.png")

%% Plotagem do gráfico da função tanh()
x = linspace(-10,10);
y = tanh(x) * sin(x);

plot(x, y);
xlabel("x");
ylabel("tanh(x)")
ylim([-2,2]);

%% Função que aplica histograma na imagem
function HI = aplicarHistograma(I, H)
    HI = uint8(zeros(size(I,1), size(I,2)));
    % para cada linha da imagem
    for i = 1:size(I,1)
        % para cada coluna da imagem
        for j = 1:size(I,2)
            % atribui o valor correspondente do histograma
            HI(i,j) = H(I(i,j)+1);
        end
    end
end


