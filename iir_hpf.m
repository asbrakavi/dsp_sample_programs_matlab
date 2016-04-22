clc;
clear all;
close all;
rp=0.89;
rs=0.2;
Rs=-20*log10(rs)
Rp=-20*log10(rp)
fp=75;
fs=30;
Fs=1000;%sampling frequency 
ws=(2*pi*fs)/Fs;
wp=(2*pi*fp)/Fs;
[n,wn]=buttord(wp,ws,Rp,Rs);
[z,p,k]=butter(n,wn,'high');
[b,a]=butter(n,wn,'high');
[h,w]=freqz(b,a);
plot(w,20*log10(abs(h)));


