clc
t=0:0.001:1;
 
s1=5*sin(2.*pi.*5*t);
subplot(5,1,1)
plot(t,s1);
ylabel ('Amplitude'); xlabel ('Time  Index');
title('SIN X');
grid on;
 
s2=5*cos(2.*pi.*5*t);
subplot(5,1,2); plot(t,s2);
ylabel ('Amplitude'); xlabel ('Time  Index');
title('COS X');
grid on;
 
t=0:50;
subplot(5,1,3); plot(t,1.414*t);
ylabel ('Amplitude'); xlabel ('Time  Index');
title ('Ramp signal');
 
t = -1:0.001:1;
y = heaviside(t);
subplot(5,1,4);
plot(t,y);                                           
ylabel ('Amplitude'); xlabel ('Time Index');                                
title ('Unit Step Signal'); 
 
ex=exp(t);
subplot(5,1,5); plot(t,ex);
ylabel ('Amplitude'); xlabel ('Time  Index');
title ('Exponential');
