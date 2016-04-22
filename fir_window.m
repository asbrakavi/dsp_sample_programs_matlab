clc;
clear all;
close all;
M1=11;
M=51;%input('Enter the length of the filter : ');
fc=1760; fs=10000;
wc=2*fc/fs;

x1=fir1(M-1,wc,'low',rectwin(M));
[h,w]=freqz(x1);
subplot(2,2,1);
plot(w/pi,20*log(abs(h)));
title('Mag. plot - Rect win');
xlabel('frequency'); ylabel('Magnitude(dB)');
hold on;
x11=fir1(M1-1,wc,'low',rectwin(M1),'noscale');
[h,w]=freqz(x11);
subplot(2,2,1);
plot(w/pi,10*log10(abs(h)),'r');
title('Mag. plot - Rect win');
xlabel('frequency'); ylabel('Magnitude(dB)');
hold off;
legend('M=51','M=11');

x2=fir1(M-1,wc,'low',blackman(M),'noscale');
[h,f]=freqz(x2);
subplot(2,2,2);
plot(f/pi,20*log10(abs(h)));
title('Mag. plot - blackmann win');
xlabel('frequency'); ylabel('Magnitude(dB)');

x3=fir1(M-1,wc,'low',hamming(M),'noscale');
[h,f]=freqz(x3);
subplot(2,2,3);
plot(f/pi,20*log10(abs(h)));
title('Mag. plot - Hamming win');
xlabel('frequency'); ylabel('Magnitude(dB)');

x4=fir1(M-1,wc,'low',hann(M),'scale');
[h,f]=freqz(x4);
subplot(2,2,4);
plot(f/pi,20*log10(abs(h)));
title('Mag. plot - hanning win');
xlabel('frequency'); ylabel('Magnitude(dB)');