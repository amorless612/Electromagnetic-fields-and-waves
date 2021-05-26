%电偶板子的电场线和等势线的画法(等量异号点电荷对q2:q1=1)
clear                               %清除变量
q=1;                                %电量比
xm=2.5;                             %横坐标范围
ym=2;                               %纵坐标范围
x=linspace(-xm,xm);                 %横坐标向量
y=linspace(-ym,ym);                 %纵坐标向量
[X,Y]=meshgrid(x,y);                %设置坐标网点
R1=sqrt((X+1).^2+Y.^2);             %第一个正电荷到场点的距离
R2=sqrt((X-1).^2+Y.^2);             %第二个正电荷到场点的距离
U=1./R1-q./R2;                      %计算电势
u=-4:0.5:4;                         %等势线的电势向量
figure                              %创建图形窗口
contour(X,Y,U,u,'--');hold on;      %画等势线
hold on;                            %保持图像
plot(-1,0,'o','MarkerSize',12)      %画正电荷
plot(1,0,'o','MarkerSize',12)       %画负电荷
[Ex,Ey]=gradient(-U,x(2)-x(1),y(2)-y(1)); %用电势梯度求场强的两个分量

dth1=20;                            %第1I、III象限电场线角度间隔
th1=(dth1:dth1:180-dth1)*pi/180;    %电场线的起始角度
r0=0.1;                             %电场线起点半径
xl=r0*cos(th1)-1;                   %电场线的起点横坐标
yl=r0*sin(th1);                     %电场线的起点纵坐标
streamline(X,Y,Ex,Ey,xl,yl)         %画第1I象限电场线
streamline(X,-Y,Ex,-Ey,xl,-yl)      %画第1II象限电场线

dth2=dth1/q;                        %第1、IV 象限电场线角度间隔
th2=(180-dth2:-dth2:dth2)*pi/180;   %电场线的起始角度
x2=r0*cos(th2)+1;                   %电场线的起点横坐标
y2=r0*sin(th2);                     %电场线的起点纵坐标
streamline(X,Y,-Ex,-Ey,x2,y2)       %画第1象限电场线
streamline(X,-Y,-Ex,Ey,x2,-y2)      %画第1V象限电场线

axis equal tight                    %使坐标刻度相等
quiver(X,Y,Ex,Ey,0.5)
title( '电偶极子的电场线和等势线','fontsize',16)
xlabel('\itx/a(电势单位：kq/a=1)(电荷比q2/q1=1)','fontsize',12)
ylabel('\ity/a','fontsize',12)