function dx=MRAM(t,x)

b1=1000;
f=0;
k1=16182;
k2=19000;
m1=290;
m2=59;
z1=0.05*sin(0.5*pi*t);
z2=0.05*sin(20*pi*t);

dx=zeros(4,1);
A=[m1 0; 0 m2];
B=[b1 -b1; -b1 b1];
C=[k1 -k1; -k1 (k1+k2)];
D=[1 0; -1 k2];
U=[f; z1];

dx(1)=x(3);
dx(2)=x(4);
dx(3:4)=inv(A)*(D*U-B*[x(3); x(4)]-C*[x(1); x(2)]);