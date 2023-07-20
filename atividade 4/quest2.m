I = imread("peppers.png");
I1 = I(:,:,1);
imshow(I1)
%%
N = imnoise(I1, "salt & pepper",0.4);
imshow(N)
%%
S = medfilt2(N,[6,6]);
imshow(S)
%%
imshow(amedfilt(N,3))