clear all
clc
x=[1,2,3,4,5,6,7,8];
l=length(x);
X=zeros(1,8);
for i=1:8
    for m=1:l
        X(i)=X(i)+x(m)*exp(-1i*2*pi*(i-1)*(m-1)/l);
    end
end
h=[7,-2,-3,-5,1,6,-4,-9];
s=length(h);
H=zeros(1,8);
for i=1:8
    for m=1:s
        H(i)=H(i)+h(m)*exp(-1i*2*pi*(i-1)*(m-1)/s);
    end
end
Y=zeros(1,8);
for d=1:8
    Y(d)=X(d)*H(d);
end
y=zeros(1,15);
p=length(Y);
for i=1:15
    for m=1:p
        y(i)=y(i)+Y(m)*exp(-1i*2*pi*(i-1)*(m-1)/p);
    end
end
subplot(3,1,1);
stem(x);
title('x[n]');
subplot(3,1,2);
stem(h);
title('h[n]');
subplot(3,1,3);
stem(y);
title('Linear Convolution of x[n] and h[n]');
