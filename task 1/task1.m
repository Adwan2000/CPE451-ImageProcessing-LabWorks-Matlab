image=imread('coins.png');
h=imhist(image);
figure(1);
plot(h);

new=zeros(len(1),len(2));
len=size(image);
for i=1:len(1)
    for j=1:len(2)
    if image(i,j)<50
        new(i,j)=image(i,j)*2;
    elseif image(i,j)>50 && image(i,j)<150
        new(i,j)=image(i,j)+100;
    end
    end
end
figure(2);
imshow(new)


img2=imcomplement(image);
figure(3);
imshow(img2);

figure(4);
re=imresize(image,[150 130]);
imshow(re);

img3=zeros(len(1),len(2));
for i=1:len(1)
    for j=1:len(2)
    if image(i,j)<50
        img3(i,j)=0;
    else
        img3(i,j)=1;
    end
    end
end
figure(5)
imshow(img3);