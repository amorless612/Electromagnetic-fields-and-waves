%��ż���ӵĵ糡�ߺ͵����ߵĻ���(������ŵ��ɶ�q2:q1=1)
clear                               %�������
q=1;                                %������
xm=2.5;                             %�����귶Χ
ym=2;                               %�����귶Χ
x=linspace(-xm,xm);                 %����������
y=linspace(-ym,ym);                 %����������
[X,Y]=meshgrid(x,y);                %������������
R1=sqrt((X+1).^2+Y.^2);             %��һ������ɵ�����ľ���
R2=sqrt((X-1).^2+Y.^2);             %�ڶ�������ɵ�����ľ���
U=1./R1-q./R2;                      %�������
u=-4:0.5:4;                         %�����ߵĵ�������
figure                              %����ͼ�δ���
contour(X,Y,U,u,'--');hold on;      %��������
hold on;                            %����ͼ��
plot(-1,0,'o','MarkerSize',12)      %�������
plot(1,0,'o','MarkerSize',12)       %�������
[Ex,Ey]=gradient(-U,x(2)-x(1),y(2)-y(1)); %�õ����ݶ���ǿ����������

dth1=20;                            %��1I��III���޵糡�߽Ƕȼ��
th1=(dth1:dth1:180-dth1)*pi/180;    %�糡�ߵ���ʼ�Ƕ�
r0=0.1;                             %�糡�����뾶
xl=r0*cos(th1)-1;                   %�糡�ߵ���������
yl=r0*sin(th1);                     %�糡�ߵ����������
streamline(X,Y,Ex,Ey,xl,yl)         %����1I���޵糡��
streamline(X,-Y,Ex,-Ey,xl,-yl)      %����1II���޵糡��

dth2=dth1/q;                        %��1��IV ���޵糡�߽Ƕȼ��
th2=(180-dth2:-dth2:dth2)*pi/180;   %�糡�ߵ���ʼ�Ƕ�
x2=r0*cos(th2)+1;                   %�糡�ߵ���������
y2=r0*sin(th2);                     %�糡�ߵ����������
streamline(X,Y,-Ex,-Ey,x2,y2)       %����1���޵糡��
streamline(X,-Y,-Ex,Ey,x2,-y2)      %����1V���޵糡��

axis equal tight                    %ʹ����̶����
quiver(X,Y,Ex,Ey,0.5)
title( '��ż���ӵĵ糡�ߺ͵�����','fontsize',16)
xlabel('\itx/a(���Ƶ�λ��kq/a=1)(��ɱ�q2/q1=1)','fontsize',12)
ylabel('\ity/a','fontsize',12)