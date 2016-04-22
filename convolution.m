clear all;
clc;

a=input('Input a:');
b=input('Input b:');
m=length(a);
n=length(b);
z1=zeros(1,n-1);
ax=[a,z1];
ax=fliplr(ax);
ax=[ax,z1];
l=length(ax);
for i=1:m+n-1
    x=ax(l-i-n+2:l-i+1);
    d(i)=x*(b.');
end
d
c=conv(a,b);
if(c==d)
    'the convolution is correct'
else
    'wrong value'
end