A=imread('image2.png');
A1=A;
B=ordfilt2(A1,9,ones(3,3));
figure(1),imshow(B);

A2=A;
C=ordfilt2(A2,13,ones(5,5));
figure(2),imshow(C);

A3=A;
s=size(A3);
D=zeros(s(1),s(2));
E=zeros(5,5);
for i=3:s(1)-2
    for j=3:s(2)-2
        C=A3(i-2:i+2,j-2:j+2);
        result=sum(sum(C))-max(max(C))-min(min(C));
        result=result/21;
        D(i,j)=result;
        
             
    end
end

figure(3),imshow(D/(max(max(D))));

L=filter2(1/9*ones(3,3),A); 
C=2*double(A)-L; 
figure(4),imshow(C/(max(max(C))))
