x=1;
e(x)=10;

a=3*x^2-2.71828^x;
b=6*x-2.71828^x;

while (e(x)> 0.001)
    xa=x-(a/b);
    xb=x+1-(a/b);
    xc=x+2-(a/b);
    xd=x+3-(a/b);
    xe=x+4-(a/b);
    
    e(x)=abs(xd-xe);
    
end


disp(e)
tamanio=size(e);
ite= 1:1:tamanio(2);

figure('DefaultAxesFontSize',14)
set(gcf,'color','white');
plot(ite,e,'color',[1 0 0])
grid on


