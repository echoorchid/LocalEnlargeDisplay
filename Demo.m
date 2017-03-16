clear all;close all;clc;

%% 读取图片
I = imread('monarch.bmp');    
figure, imshow(I);
%% 获取位置
h = imrect;
position = wait(h);
x=position(1,1);
y=position(1,2);
width = position(1,3);
height = position(1,4);
%% 处理显示 4--局部放大倍数，2--矩形框线宽，0--距离左下角间距
I1 = ShowEnlargedRectangle(I,[y,x],[y+height,x+width],4,2,0);  
figure;imshow(I1);