xl=0;
xu=2;
i=1;
e(i)=20;


while (e(i)> 0.01)
    
    xr=(xl+xu)/2;
 
    gxl= xl-2^xl;
    gxu= xu-2^xu;
    gxr= xr-2^xr;
    
    
    if (gxl*gxr < 0)
    xu=xr;
    e(i+1)=abs(xr-xl);
end

if (gxu*gxr < 0)
    xl=xr;
    e(i+1)=abs(xu-xr);
end
i=i+1;

if (gxu*gxr == 0)
    xr=xr;
end
end
     

disp(xr)

tamanio=size(e);
ite= 1:1:tamanio(2);

figure('DefaultAxesFontSize',14)
set(gcf,'color','white');
plot(ite,e,'color',[1 0 0])
grid on
