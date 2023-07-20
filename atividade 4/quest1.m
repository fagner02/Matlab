I = imread("circles.png");
imshow(I)
%%
I = double(I);
%%
I1 = I(:,:,1);
%%
N = imnoise(I1, "salt & pepper");
imshow(N)
%%
F = [1,0,1];
S = conv2(I1, F);
imshow(S)

%%
imshow(wiener2(N, [15,15]))
%%
M = medfilt2(I1, [5,5]);
imshow(M)