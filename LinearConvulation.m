clear all
clc
x=[1,2,3,4];
y=[5,6,7,8,9];
n=length(x);
m=length(y);
b=zeros(1,n+m-1);
c=conv(x,y);
display(c)
for i=1:n
    for j=1:m
        a(i,j)=x(i).*y(j);
    end
end
 
k=2;
while(k<=n+m)
for i=1:n
    for j=1:m
        if(k==(i+j))
            b(k-1)=(b(k-1)+a(i,j));
        end;
    end
end
k=k+1;
end
display(b)
subplot(4,1,1);
stem(x);
grid on; 
xlabel('Time index n');
ylabel('Amplitude');
title('discrete signal x '); 
subplot(4,1,2),stem(y);
grid on; 
xlabel('Time index n');
ylabel('Amplitude');
title('discrete signal y '); 
subplot(4,1,3), stem(b);
grid on;
xlabel('Time index n');
ylabel('Amplitude');
title('Linear Covolution using Code'); 
subplot(4,1,4), stem(c);
grid on;
xlabel('Time index n');
ylabel('Amplitude');
title('Linear Covolution using Predefined Function');
