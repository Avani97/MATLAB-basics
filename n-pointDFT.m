clear all
clc
x=[1,2,3,4,5,6,7,8];
l=length(x);
y=zeros(1,8);
mag=zeros(1,8);
phase=zeros(1,8);
for i=1:8
    for m=1:l
        y(i)=y(i)+x(m)*exp(-1i*2*pi*(i-1)*(m-1)/l);
    end
    mag(i)=abs(y(i));
    phase(i)=angle(y(i));
end
disp('DFT');
disp(y);
disp('Magnitude')
disp(mag);
disp('Phase');
disp(phase);
subplot(3,1,1);
stem(x);
title('x[n]');
subplot(3,1,2);
stem(mag);
title('Magnitude of X[N]');
ylabel('Magnitude');
subplot(3,1,3);
stem(phase);
ylabel('radians');
title('Phase of X[N]');
