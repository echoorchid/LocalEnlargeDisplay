clear all;close all;clc;

%% ��ȡͼƬ
I = imread('monarch.bmp');    
figure, imshow(I);
%% ��ȡλ��
h = imrect;
position = wait(h);
x=position(1,1);
y=position(1,2);
width = position(1,3);
height = position(1,4);
%% ������ʾ 4--�ֲ��Ŵ�����2--���ο��߿�0--�������½Ǽ��
I1 = ShowEnlargedRectangle(I,[y,x],[y+height,x+width],4,2,0);  
figure;imshow(I1);