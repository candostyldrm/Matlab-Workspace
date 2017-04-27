Fs = 2000;
t = 0:1/Fs:0.1;
x = 2.*cos(2.*pi.*400*t)+sin(2.*pi.*250.*t);
h = exp(-20.*t);

y1 = conv(x,h); 
nx=numel(x);
nh=numel(h);
f=[x,zeros(1,nh-1)];
g=[h,zeros(1,nx-1)];
fourier_x=fft(f);
fourier_h=fft(g);
fourier_y2=fourier_x.*fourier_h;
y2=ifft(fourier_y2);
N = 1024;
f = linspace(-Fs/2, Fs/2, N);

X= fft(x,N);
X1=fftshift(X);
H= fft(h,N);
H1=fftshift(H);
Y1= fft(y1,N);
Y12=fftshift(Y1);
Y2=fft(y2,N);
Y22=fftshift(Y2);

figure;

subplot(411)
plot(f,abs(X1));
ylabel('f');
xlabel('x');
title('Frequency Response of x(t)');
% axis square

subplot(412)
plot(f,abs(H1));
ylabel('h');
xlabel('f');
title('Frequency Response of h(t)');
% % axis square

subplot(413)
plot(f,abs(Y12));
ylabel('y1');
xlabel('f');
title('Frequency Response of y1(t)');
% % axis square

subplot(414)
plot(f,abs(Y22));
ylabel('y2');
xlabel('f');
title('Frequency Response of y2(t)');
% axis squa"re