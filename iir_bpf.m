clc; clear all; close all;
rp=0.89; rs=0.2;
Rs=-20*log10(rs);
Rp=-20*log10(rp);
fs1=2000;
fp1=2500;
fs2=8000;
fp2=7500;
Fs=80000;%sampling frequency 2000 Hz
ws=[2*pi*fs1/Fs; 2*pi*fs2/Fs];
wp=[2*pi*fp1/Fs; 2*pi*fp2/Fs];
[n,wn]=buttord(wp,ws,Rp,Rs);
[b,a]=butter(n,wn,'bandpass');
[h,w]=freqz(b,a);
plot(w/pi,(abs(h)).^2);
title('Square-Gain vs frequency');
ylabel('Square-Gain');
xlabel('Frequency');

