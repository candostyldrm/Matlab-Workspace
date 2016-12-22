
f1 = 5000;
f2=150;
duration = 0.05
t1 = 0: 1/f1 : duration ;
t2 = 0: 1/f2 : duration ;
n1 = length(t1);
n2 = length(t2);
sinyal1 = sin (2 * pi * 100 .* t1) + 4*cos(2*pi*500.*t1);
sinyal2 = sin(2 * pi* 100.* t2) + 4*cos(2*pi*500.*t2) ;

r1 = fft(sinyal1,n1);
r2 = fft(sinyal2,n2);

k1 = fftshift(r1);
k2 = fftshift(r2);

yer1 = linspace( -f1/2,f1/2,n1);
yer2 = linspace (-f2/2,f2/2,n2);

l1 = ifft(r1,n1);
l2 = ifft(r2,n2);


subplot(3,1,1)
plot(t1,sinyal1);
hold on
plot(t2,sinyal2,'r');
subplot(3,1,2)
plot(yer1,abs(k1));
hold on
plot(yer2,abs(k2),'r');
subplot(3,1,3)
plot(t1,l1);
hold on
plot(t2,l2,'r');