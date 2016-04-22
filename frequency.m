 clc;   clear;
x=input('enter x[n]:');
N=length(x);
levels=nextpow2(N);
xn=[x,zeros(1,(2^levels)-N)];
N=length(xn);
tw=cos(2*pi*(1/N)*(0:N/2-1))-j*sin(2*pi*(1/N)*(0:N/2-1));
for level=levels:-1:1;
    L=2^level;
    twlvl=tw(1:N/L:N/2);
    for k=0:L:N-L;      
        for n=0:L/2-1;
             A=x(n+k+1);
            B=x(n+k+(L/2)+1);
            x(n+k+1)=A+B;
            x(n+k+(L/2)+1)=(A-B)*twlvl(n+1);;
            end  
    end
    x
    end
x=bitrevorder(x)
XK=x
n=0:N-1;
subplot(2,2,1);stem(n,xn);title('x(n)');xlabel('n');ylabel('Amplitude');
subplot(2,2,2);stem(n,real(XK));title('Real part of X(K)');xlabel('n');ylabel('Amplitude');
subplot(2,2,3);stem(n,imag(XK));title('Imag part of X(K)');xlabel('n');ylabel('Amplitude');