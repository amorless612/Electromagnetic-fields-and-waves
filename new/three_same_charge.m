%��������ͬ�ŵ�ɵĵ糡�ߺ͵�����
clear                               %�������
x1=1;   y1=0;   q1=1;
x2=-1;  y2=0;   q2=1;
x3=0;   y3=1;   q3=1;

xm=2.5;                             %�����귶Χ
ym=2;                               %�����귶Χ
x=linspace(-xm,xm);                 %����������
y=linspace(-ym,ym);                 %����������
[X,Y]=meshgrid(x,y);                %������������

U=q1./sqrt((X-x1).^2+(Y-y1).^2)+q2./sqrt((X-x2).^2+(Y-y2).^2)+q3./sqrt((X-x3).^2+(Y-y3).^2);  %�������
u=-4:0.2:4;                         %�����ߵĵ�������
figure                              %����ͼ�δ���
contour(X,Y,U,u,'--');hold on;      %��������
hold on;                            %����ͼ��
plot(1,0,'o','MarkerSize',12)       %�����1
plot(-1,0,'o','MarkerSize',12)      %�����2
plot(0,1,'o','MarkerSize',12)       %�����3

[Ex,Ey]=gradient(-U);                %�õ����ݶ���ǿ����������

dth1=20;                             %�糡�߽Ƕȼ��
th1=(dth1:dth1:360)*pi/180;          %�糡�ߵ���ʼ�Ƕ�
r0=0.1;                              %�糡�����뾶
xl=r0*cos(th1)+x1;                   %�糡�ߵ���������
yl=r0*sin(th1)+y1;                   %�糡�ߵ����������
streamline(X,Y,Ex,Ey,xl,yl)        

dth2=20;                             %�糡�߽Ƕȼ��
th2=(dth2:dth2:360)*pi/180;          %�糡�ߵ���ʼ�Ƕ�
r0=0.1;                              %�糡�����뾶
x2=r0*cos(th2)+x2;                   %�糡�ߵ���������
y2=r0*sin(th2)+y2;                   %�糡�ߵ����������
streamline(X,Y,Ex,Ey,x2,y2)        

dth3=20;                             %�糡�߽Ƕȼ��
th3=(dth3:dth3:360)*pi/180;          %�糡�ߵ���ʼ�Ƕ�
r0=0.1;                              %�糡�����뾶
x3=r0*cos(th3)+x3;                   %�糡�ߵ���������
y3=r0*sin(th3)+y3;                   %�糡�ߵ����������
streamline(X,Y,Ex,Ey,x3,y3)  

axis equal tight                     %ʹ����̶����
quiver(X,Y,Ex,Ey,1)
title( '������ͬ�ŵ�ɵĵ糡�ߺ͵�����','fontsize',16)
xlabel('\itx/a','fontsize',12)
ylabel('\ity/a','fontsize',12)