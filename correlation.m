clear all
clc
x=[1,2,-3,-4,5,6,-7,8];
h=[-2,3,5,6,-1,7,-9,8];
n=length(x);
s=zeros(1,n);
j=zeros(1,n);
a=zeros(1,n);
y=zeros(1,n);
b=zeros(1,n);
b=xcorr(x,x);
k=1;
for i=1:n
    y(1,1)=(y(1,1)+(x(i)*x(i)));
end
while(k<n)
    for i=k+1:n
        s(i-k)=x(i);
    end
    for i=1:n
        y(1,k+1)=(y(1,k+1)+(x(i)*s(i)));
    end
    k=k+1;
end
k=1;
for i=1:n
    a(1,1)=(a(1,1)+(x(i)*h(i)));
end
while(k<n)
    for i=k+1:n
        j(i-k)=h(i);
    end
    for i=1:n
        a(1,k+1)=(a(1,k+1)+(x(i)*j(i)));
    end
    k=k+1;
end
subplot(4,1,1);
stem(x);
grid on; 
xlabel('Time index n');
ylabel('Amplitude');
title('discrete signal x '); 
subplot(4,1,2),stem(h);
grid on; 
xlabel('Time index n');
ylabel('Amplitude');
title('discrete signal h '); 
subplot(4,1,3),stem(y);
grid on; 
xlabel('Time index n');
ylabel('Amplitude');
title('Auto Correlation of x'); 
subplot(4,1,4),stem(a);
grid on; 
xlabel('Time index n');
ylabel('Amplitude');
title('Cross Correlation of x,h'); 
display(x)
display(h)
display(' Auto Correlation=')
display(y)
display(' Cross Correlation=')
display(a)
