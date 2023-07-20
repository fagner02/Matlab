I = imread("lena.png");
D = fft2(I);
imshow(abs(D))
%%
size(D)