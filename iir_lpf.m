clc;
clear all;
close all;
rp=0.89;
rs=0.2;
Rs=-20*log10(rs)
Rp=-20*log10(rp)
fp=30;
fs=75;
Fs=1000;%sampling frequency 
ws=(2*pi*fs)/Fs;
wp=(2*pi*fp)/Fs;
[n,wn]=buttord(wp,ws,Rp,Rs);
[z,p,k]=butter(n,wn,'low');
[b,a]=butter(n,wn,'low');
[h,w]=freqz(b,a);
plot(w,20*log10(abs(h)));


