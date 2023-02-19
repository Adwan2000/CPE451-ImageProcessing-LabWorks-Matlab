%Q1
A=imread('coins.png');
B=fft2(A);
B=abs(B);
B=fftshift(B);
B=log(1+B);
B
%Q2
s= size(A);
filter=ones(s(1),s(2)); 
B=fft2(A);
B=fftshift(B); 
B=B.*filter;
C=ifft2(B);
figure(1),imshow(C/max(max(C)));

%Q3
s1= size(A);
ffilter=ones(s1(1),s1(2));
ffilter(s1(1)/2+1,s1(2)/2+1)=0;  
 
D=fft2(A);
D=fftshift(D); 
D=D.*ffilter;
E=ifft2(D);
figure(2),imshow(E/max(max(E)));

