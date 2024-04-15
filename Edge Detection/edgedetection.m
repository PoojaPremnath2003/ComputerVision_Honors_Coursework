%img1=imread("rice.png");
%hist1 = imhist(img1);
%img2=imread("Capture.PNG");
%hist2=imhist(img2);
%img3 = imread("onion.png");
%imshow(img3);
%hist3 = imhist(img3);
img4 = imread("lena.PNG");
imshow(img4);
%hist4 = imhist(img4);
%img5 = imread("cameraman.png");
%imshow(img5);
%hist5 = imhist(img5);
I = rgb2gray(img4);
edges1 = edge(I, 'Roberts'); 
figure
subplot(1, 1, 1), 
imshow(edges1); 
title("Robert Edge Detection"); 
edges2 = edge(I, 'Sobel'); 
figure
subplot(1, 1, 1), 
imshow(edges2); 
title("Sobel Edge Detection"); 
edges3 = edge(I, 'Prewitt'); 
figure
subplot(1, 1, 1), 
imshow(edges3); 
title("Prewitt Edge Detection"); 
edges3 = edge(I, 'canny'); 
figure
subplot(1, 1, 1), 
imshow(edges3); 
title("Canny Edge Detection");
I = imread('coins.png');
T = adaptthresh(I);
BW = imbinarize(I,T);
figure
imshowpair(I,BW,'montage');
I = imread('coins.png');
T = graythresh(I);
BW = imbinarize(I,T);
figure
imshowpair(I,BW,'montage');