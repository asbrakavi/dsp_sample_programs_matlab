clear all;
clc;

a=input('Input a:');
m=length(a);
z1=zeros(1,m-1);
ax=[a,z1];
ax=fliplr(ax);
ax=[ax,z1];
ax=fliplr(ax);
l=length(ax);
for i=1:m+m-1
    x=ax(l-i-m+2:l-i+1);
    d(i)=x*(a.');
end
d=fliplr(d);
d
