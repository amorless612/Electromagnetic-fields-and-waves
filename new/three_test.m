%三电荷比为1:1：2电荷的电场线和等势线
clear                               %清除变量
x1=1;   y1=0;   q1=1;
x2=-1;  y2=0;   q2=1;
x3=0;   y3=1;   q3=2;

xm=2.5;                             %横坐标范围
ym=2;                               %纵坐标范围
x=linspace(-xm,xm);                 %横坐标向量
y=linspace(-ym,ym);                 %纵坐标向量
[X,Y]=meshgrid(x,y);                %设置坐标网点

U=q1./sqrt((X-x1).^2+(Y-y1).^2)+q2./sqrt((X-x2).^2+(Y-y2).^2)+q3./sqrt((X-x3).^2+(Y-y3).^2);  %计算电势
u=-4:0.2:4;                         %等势线的电势向量
figure                              %创建图形窗口
contour(X,Y,U,u,'--');hold on;      %画等势线
hold on;                            %保持图像
plot(1,0,'o','MarkerSize',12)       %画电荷1
plot(-1,0,'o','MarkerSize',12)      %画电荷2
plot(0,1,'o','MarkerSize',12)       %画电荷3

[Ex,Ey]=gradient(-U);                %用电势梯度求场强的两个分量

dth1=20;                             %电场线角度间隔
th1=(dth1:dth1:360)*pi/180;          %电场线的起始角度
r0=0.1;                              %电场线起点半径
xl=r0*cos(th1)+x1;                   %电场线的起点横坐标
yl=r0*sin(th1)+y1;                   %电场线的起点纵坐标
streamline(X,Y,Ex,Ey,xl,yl)        

dth2=20;                             %电场线角度间隔
th2=(dth2:dth2:360)*pi/180;          %电场线的起始角度
r0=0.1;                              %电场线起点半径
x2=r0*cos(th2)+x2;                   %电场线的起点横坐标
y2=r0*sin(th2)+y2;                   %电场线的起点纵坐标
streamline(X,Y,Ex,Ey,x2,y2)        

dth3=20;                             %电场线角度间隔
th3=(dth3:dth3:360)*pi/180;          %电场线的起始角度
r0=0.1;                              %电场线起点半径
x3=r0*cos(th3)+x3;                   %电场线的起点横坐标
y3=r0*sin(th3)+y3;                   %电场线的起点纵坐标
streamline(X,Y,Ex,Ey,x3,y3)  

axis equal tight                     %使坐标刻度相等
quiver(X,Y,Ex,Ey,1)
title( '三电荷比为1:1：2电荷的电场线和等势线','fontsize',16)
xlabel('\itx/a','fontsize',12)
ylabel('\ity/a','fontsize',12)